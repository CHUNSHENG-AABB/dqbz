package com.dqbz.model;

public class MemberWithBLOBs extends Member {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column member.CONTENT
     *
     * @mbggenerated
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column member.CONTACT
     *
     * @mbggenerated
     */
    private String contact;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column member.CONTENT
     *
     * @return the value of member.CONTENT
     *
     * @mbggenerated
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column member.CONTENT
     *
     * @param content the value for member.CONTENT
     *
     * @mbggenerated
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column member.CONTACT
     *
     * @return the value of member.CONTACT
     *
     * @mbggenerated
     */
    public String getContact() {
        return contact;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column member.CONTACT
     *
     * @param contact the value for member.CONTACT
     *
     * @mbggenerated
     */
    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }
}