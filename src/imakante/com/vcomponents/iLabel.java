/**
 * 
 */
package imakante.com.vcomponents;

import javax.swing.Icon;
import javax.swing.JLabel;

/**
 * @author dragiiski
 *
 */
public class iLabel extends JLabel {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4117077318780675054L;

	/**
	 * 
	 */
	public iLabel() {
		super();
	}

	/**
	 * @param text
	 */
	public iLabel(String text) {
		super(text);
	}

	/**
	 * @param text
	 * @param horizontalAlignment
	 */
	public iLabel(String text, int horizontalAlignment) {
		super(text, horizontalAlignment);
	}

	/**
	 * @param image
	 */
	public iLabel(Icon image) {
		super(image);
	}

	/**
	 * @param image
	 * @param horizontalAlignment
	 */
	public iLabel(Icon image, int horizontalAlignment) {
		super(image, horizontalAlignment);
	}

	/**
	 * @param text
	 * @param icon
	 * @param horizontalAlignment
	 */
	public iLabel(String text, Icon icon, int horizontalAlignment) {
		super(text, icon, horizontalAlignment);
	}

}
