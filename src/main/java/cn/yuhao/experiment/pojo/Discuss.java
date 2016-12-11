package cn.yuhao.experiment.pojo;

public class Discuss {
    /** 评论id */
    private String id;

    /** 实验id */
    private String videoId;

    /** 博客id */
    private String blogId;

    /** 习题id */
    private String examId;

    /** 评论时间 */
    private String time;

    /** 评论人 */
    private String auid;

    /** 回复者 */
    private String buid;

    /** 评论内容 */
    private String content;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.id
     *
     * @return the value of discuss.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.id
     *
     * @param id the value for discuss.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.video_id
     *
     * @return the value of discuss.video_id
     *
     * @mbggenerated
     */
    public String getVideoId() {
        return videoId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.video_id
     *
     * @param videoId the value for discuss.video_id
     *
     * @mbggenerated
     */
    public void setVideoId(String videoId) {
        this.videoId = videoId == null ? null : videoId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.blog_id
     *
     * @return the value of discuss.blog_id
     *
     * @mbggenerated
     */
    public String getBlogId() {
        return blogId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.blog_id
     *
     * @param blogId the value for discuss.blog_id
     *
     * @mbggenerated
     */
    public void setBlogId(String blogId) {
        this.blogId = blogId == null ? null : blogId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.exam_id
     *
     * @return the value of discuss.exam_id
     *
     * @mbggenerated
     */
    public String getExamId() {
        return examId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.exam_id
     *
     * @param examId the value for discuss.exam_id
     *
     * @mbggenerated
     */
    public void setExamId(String examId) {
        this.examId = examId == null ? null : examId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.time
     *
     * @return the value of discuss.time
     *
     * @mbggenerated
     */
    public String getTime() {
        return time;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.time
     *
     * @param time the value for discuss.time
     *
     * @mbggenerated
     */
    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.auid
     *
     * @return the value of discuss.auid
     *
     * @mbggenerated
     */
    public String getAuid() {
        return auid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.auid
     *
     * @param auid the value for discuss.auid
     *
     * @mbggenerated
     */
    public void setAuid(String auid) {
        this.auid = auid == null ? null : auid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.buid
     *
     * @return the value of discuss.buid
     *
     * @mbggenerated
     */
    public String getBuid() {
        return buid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.buid
     *
     * @param buid the value for discuss.buid
     *
     * @mbggenerated
     */
    public void setBuid(String buid) {
        this.buid = buid == null ? null : buid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column discuss.content
     *
     * @return the value of discuss.content
     *
     * @mbggenerated
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column discuss.content
     *
     * @param content the value for discuss.content
     *
     * @mbggenerated
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}