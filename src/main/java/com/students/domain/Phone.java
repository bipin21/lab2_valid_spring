/**
 * 
 */
package com.students.domain;

import javax.validation.constraints.*;
import java.io.Serializable;

/**
 * @author B.Pirasanth
 *
 */
public class Phone implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@NotNull
	@DecimalMin("100")
	@DecimalMax("999")
	@Digits(integer = 3, fraction = 0, message="{Digits.validation}")
 	private Integer area;

	@NotNull
	@DecimalMin("100")
	@DecimalMax("999")
	@Digits(integer = 3, fraction = 0, message="{Digits.validation}")
 	private Integer prefix;

 	@NotNull
	@DecimalMin("1000")
	@DecimalMax("9999")
	@Digits(integer = 4, fraction = 0, message="{Digits.validation}")
 	private Integer number;
	

 
	public Integer getArea() {
		return area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

 	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getPrefix() {
		return prefix;
	}

	public void setPrefix(Integer prefix) {
		this.prefix = prefix;
	}
}
