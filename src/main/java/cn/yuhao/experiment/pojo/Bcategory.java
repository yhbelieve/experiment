package cn.yuhao.experiment.pojo;

public class Bcategory {
    /** 二级分类分类的id */
    private String bid;

    /** 二级分类的名称 */
    private String bname;

    /** 二级分类位置 */
    private Integer position;

    /** 二级分类是否显示 */
    private Boolean isShow;

    /** 二级分类id */
    private String aid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bcategory.bid
     *
     * @return the value of bcategory.bid
     *
     * @mbggenerated
     */
    public String getBid() {
        return bid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bcategory.bid
     *
     * @param bid the value for bcategory.bid
     *
     * @mbggenerated
     */
    public void setBid(String bid) {
        this.bid = bid == null ? null : bid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bcategory.bname
     *
     * @return the value of bcategory.bname
     *
     * @mbggenerated
     */
    public String getBname() {
        return bname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bcategory.bname
     *
     * @param bname the value for bcategory.bname
     *
     * @mbggenerated
     */
    public void setBname(String bname) {
        this.bname = bname == null ? null : bname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bcategory.position
     *
     * @return the value of bcategory.position
     *
     * @mbggenerated
     */
    public Integer getPosition() {
        return position;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bcategory.position
     *
     * @param position the value for bcategory.position
     *
     * @mbggenerated
     */
    public void setPosition(Integer position) {
        this.position = position;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bcategory.is_show
     *
     * @return the value of bcategory.is_show
     *
     * @mbggenerated
     */
    public Boolean getIsShow() {
        return isShow;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bcategory.is_show
     *
     * @param isShow the value for bcategory.is_show
     *
     * @mbggenerated
     */
    public void setIsShow(Boolean isShow) {
        this.isShow = isShow;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bcategory.aid
     *
     * @return the value of bcategory.aid
     *
     * @mbggenerated
     */
    public String getAid() {
        return aid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bcategory.aid
     *
     * @param aid the value for bcategory.aid
     *
     * @mbggenerated
     */
    public void setAid(String aid) {
        this.aid = aid == null ? null : aid.trim();
    }
}