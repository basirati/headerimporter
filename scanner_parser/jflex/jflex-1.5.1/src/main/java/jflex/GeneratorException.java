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
 * Thrown when code generation has to be aborted.
 *
 * @author Gerwin Klein
 * @version JFlex 1.5, $Revision: 776 $, $Date: 2014-01-22 06:00:50 +0100 (Wed, 22 Jan 2014) $
 */
public class GeneratorException extends RuntimeException {

  /**
	 * 
	 */
	private static final long serialVersionUID = -9128247888544263982L;

public GeneratorException() {
    super("Generation aborted");
  }

}
