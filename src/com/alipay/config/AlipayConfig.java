package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000116675383";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDqfmSFELhO75Gh15pKiv9YIPMxcy6cP6OFD8MbeXyLb09MEeLJeimo8agTBdxapmIfN81rWqsqRGrcqj5rqXPXJaQMZsedWQXtjvZUCpZCkHDkTQMx6fyJKNIKqc8rdBj5kOU3nqor8SJvJmFGhI0G7I0D3U37cvYRVzFVOurZQrogIUkCBAZVb+hw6qsE8XFfSDR0jhsJnRRmBIL8WgB+t3s4WaMWh+Y8pKaktC3sUUS5LisbSvgEFp65ty7dA2b2uZn9kaz9C8IJgS560NSHTAOMDqcggz0du6ZhneYJgYmWfh4l2sXbxFLowvrPdgrh3Um+lgxh1QsMH+f45WKNAgMBAAECggEALlQSYAfRoibKywLhxOB5WlwIMDjleJFKKTvX/FGgPZwcOpc+CzhLislTv45k3rQIpspLl24uawdhZX9tHbA45sTVCG41+exgs3KPUENXNId9Bl4Ax5fHAQJDnT+3YoppdMUfxEFgtZXKi9M1XM1LX5bUtXK/uXIZE4v6fzBIveuEMd9/SLECfFnkBok6tKSJkJ/pJRkk5BTnia0lW2lRo3cO+Zz8d5qPuIdawl2bZiAIZpr0cmXVuQvC8mWXcPlN33SEDFvqEaYbAc6BAUxfBKipRPBnsmnwpUReu6ruDMiqVh204zicMgAkdfWYaqx/V1/wK4pNDx3PubIY7WGiAQKBgQD1sP0je5Nuu6TCl2rgJt+CHEvmToKNZTTX7hLAV9gOgCP5mj0SAGF6uWJVpsU242Qbt+bp82O7pWF1SX4sebsNqWGuicEcpHXtThMATz72sXQLEZ+/UuxoHwFia4CRn2ZnI/c32yfFZ//AdPddwNVvZkqELMbAmSMvF7i58VJS4QKBgQD0VSDNV0yLocYUNIB6y7y3PwCKeJCxrlYiFP6rniC6dftMJHqO8IZI+GcvMDmB/lcVvCuX4tECqNxPMtd14ZFJ3YxdAII4m/Z16Qhrs+LYCq3b5Y+iY6lHDVaeHkHVVGIDO4/G4GDsJ5oN8UN100uM7vkyUpJPKBgjxi5YMUfxLQKBgBaraQAAI/9govgtfngGPjNEJyCt98/SGcket2417MKRwkACokXp8RSgzFj41VOWMaN5GX5WrcofnVl0GYdDCCZfjZrMLRxWdGccABbUOQwMHZfz3ViK7zNAQSFyp99H5Ov5XpMxzn6hdPCuGjD1XPw1ZQTDGOemeZ+bwbiucpkhAoGAUDzMguKSXqCHvgbn0mup07u6375sNg18d8DRSWaqdNFd70ljfiF61+fLavG5UPlHe/nJjx2LagYuI0wc+bdT0SASglAyc4i0TVBz1XrDmhMXuUkP/FIiOxUkRtTE5dvKPCmJM9Rnv+XZb461irIS83tfFqmLJreSBd2FRq0YZRkCgYBBGhhoJ6kjJp/AzRRtqiJK9ootwkH58GPndnbYFVT9qxj2ifltFpkF4zE+CkZWS1kBXDOoSkd4iam2LA97fduM/3/w94o6Kn73Fu/CDZDZYpgTKfGuuH500RCEuEV5MOlpxw8ww93VjB5FQT0fi/16hWiAh4YTgOqCh4KGFaTHUQ==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyWTfboRaMKaPXua3hLxbw1y3CHDibn+tIkPr8hARELYGtNoimloK3gjGr4Qi//v8FzdGSnDmJc8v/qFeyjByIS6O6D8WtVguO7oV1r8t9OfcDYYwxcDESOmmv/ZhctH858PK8ckQuuOE45Q+IbFLNZOf1iNva12cCXdPid024LI6+42WuuMYotxjkKX9VY4hHeVJoCM2kMdjEpD7PkKYR6kilHidI3mPVThRlISiN1Fe02k3ipEIbX52zpcgjqv3nIMO/dYjEkIl3e4zv4DPRZ1lgORKg8r0PqLex0aKOqGtwtE4l+u5qJOHJN52+UL9YXWU9+X+VAmdmJpD3TiUKQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

