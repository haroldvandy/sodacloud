// CHECKSTYLE:OFF
/**
 * Source code generated by Fluent Builders Generator
 * Do not modify this file
 * See generator home page at: http://code.google.com/p/fluent-builders-generator-eclipse-plugin/
 */

package org.magnum.soda.svc;

import org.magnum.soda.proxy.ObjRef;

public class ObjInvocationMsgBuilder extends
		ObjInvocationMsgBuilderBase<ObjInvocationMsgBuilder> {
	public static ObjInvocationMsgBuilder objInvocationMsg() {
		return new ObjInvocationMsgBuilder();
	}

	public ObjInvocationMsgBuilder() {
		super(new ObjInvocationMsg());
	}

	public ObjInvocationMsg build() {
		return getInstance();
	}
}

class ObjInvocationMsgBuilderBase<GeneratorT extends ObjInvocationMsgBuilderBase<GeneratorT>> {
	private ObjInvocationMsg instance;

	protected ObjInvocationMsgBuilderBase(ObjInvocationMsg aInstance) {
		instance = aInstance;
	}

	protected ObjInvocationMsg getInstance() {
		return instance;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withTargetObjectId(ObjRef aValue) {
		instance.setTargetObjectId(aValue);

		return (GeneratorT) this;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withInvocation(InvocationInfo aValue) {
		instance.setInvocation(aValue);

		return (GeneratorT) this;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withResponseMsgId(String aValue) {
		instance.setResponseMsgId(aValue);

		return (GeneratorT) this;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withId(String aValue) {
		instance.setId(aValue);

		return (GeneratorT) this;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withResponseTo(String aValue) {
		instance.setResponseTo(aValue);

		return (GeneratorT) this;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withSource(String aValue) {
		instance.setSource(aValue);

		return (GeneratorT) this;
	}

	@SuppressWarnings("unchecked")
	public GeneratorT withDestination(String aValue) {
		instance.setDestination(aValue);

		return (GeneratorT) this;
	}
}