/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * JFlex 1.5                                                               *
 * Copyright (C) 1998-2014  Gerwin Klein <lsf@jflex.de>                    *
 * All rights reserved.                                                    *
 *                                                                         *
 * License: BSD                                                            *
 *                                                                         *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

package jflex;


/**
 * This Exception is used in the macro expander to report cycles or
 * undefined macro usages.
 *
 * @author Gerwin Klein
 * @version JFlex 1.5, $Revision: 776 $, $Date: 2014-01-22 06:00:50 +0100 (Wed, 22 Jan 2014) $
 */
public class MacroException extends RuntimeException {

  /**
	 * 
	 */
	private static final long serialVersionUID = 275266242549067641L;


  /**
   * Creates a new MacroException without message
   */
  public MacroException() {
  }


  /**
   * Creates a new MacroException with the specified message
   *
   * @param message   the error description presented to the user.
   */
  public MacroException(String message) {
    super(message);
  }

}
