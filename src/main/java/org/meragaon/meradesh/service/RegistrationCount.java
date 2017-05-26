package org.meragaon.meradesh.service;

/**
 * Created by rampal.rao on 26/5/17.
 */
public class RegistrationCount {
    private static RegistrationCount registrationCount=null;
    private int count;
    public static boolean initialized;

    private RegistrationCount(int count){
        this.count=count;
    }

    public static RegistrationCount getInstance(){
        if(registrationCount==null){
            initialized=true;
            registrationCount=new RegistrationCount(0);
        }else {
            return registrationCount;
        }
        return registrationCount;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
