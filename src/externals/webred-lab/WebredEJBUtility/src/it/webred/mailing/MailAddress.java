package it.webred.mailing;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.regex.Pattern;

public class MailAddress {
	public static final String ADDRESS_SEPARATOR = ",";

	public MailAddress() {
	}

	// RFC 2822 token definitions for valid email - only used together to form a java Pattern object:
	private static final String sp = "\\!\\#\\$\\%\\&\\'\\*\\+\\-\\/\\=\\?\\^\\_\\`\\{\\|\\}\\~";

	private static final String atext = "[a-zA-Z0-9" + sp + "]";

	// one or more atext chars
	private static final String atom = atext + "+";

	private static final String dotAtom = "\\." + atom;

	// one atom followed by 0 or more dotAtoms
	private static final String localPart = atom + "(" + dotAtom + ")*";

	// RFC 1035 tokens for domain names:
	private static final String letter = "[a-zA-Z]";

	private static final String letDig = "[a-zA-Z0-9]";

	private static final String letDigHyp = "[a-zA-Z0-9-]";

	public static final String rfcLabel = letDig + "(" + letDigHyp + "{0,61}" + letDig + ")?";

	private static final String domain = rfcLabel + "(\\." + rfcLabel + ")*\\." + letter + "{2,6}";

	// Combined together, these form the allowed email regexp allowed by RFC 2822:
	private static final String addrSpec = "^" + localPart + "@" + domain + "$";

	// RegEx compilation
	public static final Pattern VALID_PATTERN = Pattern.compile(addrSpec);

	public static final boolean isValid(String emailString) {
		if (emailString == null)
			return false;

		emailString = emailString.replaceAll(";", ADDRESS_SEPARATOR);

		if (emailString.indexOf(ADDRESS_SEPARATOR) != -1) {
			boolean valid = true;
			ArrayList<String> v = new ArrayList<String>();

			StringTokenizer st = new StringTokenizer(emailString, ADDRESS_SEPARATOR, false);
			while (st.hasMoreTokens()) {
				v.add(st.nextToken());
			}

			Iterator<String> it = v.iterator();
			while (valid && it.hasNext()) {
				String ea = it.next();
				valid = valid && VALID_PATTERN.matcher(ea).matches();
			}
			return valid;
		} else {
			return VALID_PATTERN.matcher(emailString).matches();
		}
	}
}
