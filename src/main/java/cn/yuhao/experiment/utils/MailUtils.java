package cn.yuhao.experiment.utils;

public class MailUtils {



    // 163邮箱
    public static void sendMail(String to,String title,String content) {
        // 这个类主要是设置邮件
        MailSenderInfo mailInfo = new MailSenderInfo();
        mailInfo.setMailServerHost("smtp.163.com");
        mailInfo.setMailServerPort("25");
        mailInfo.setValidate(true);
        mailInfo.setUserName("experimentlearning@163.com"); // 实际发送者
        mailInfo.setPassword("learning2016");// 您的邮箱密码
        mailInfo.setFromAddress("experimentlearning@163.com"); // 设置发送人邮箱地址
        mailInfo.setToAddress(to); // 设置接受者邮箱地址
        mailInfo.setSubject(title);
        mailInfo.setContent(content);
        // 这个类主要来发送邮件
        SimpleMailSender sms = new SimpleMailSender();
//        sms.sendTextMail(mailInfo); // 发送文体格式
        sms.sendHtmlMail(mailInfo); // 发送html格式
    }
}