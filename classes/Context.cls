public with sharing class Context {
    private static Boolean isBypassTrigger = false;

    public static Boolean isBypassTrigger() {
        return isBypassTrigger;
    }

    public static void setBypassTrigger(Boolean value) {
        isBypassTrigger = value;
    }
}