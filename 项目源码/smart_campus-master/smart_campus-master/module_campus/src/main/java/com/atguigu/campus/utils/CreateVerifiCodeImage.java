package com.atguigu.campus.utils;

/**
 * 用于生成验证码图片
 * 防止自动化程序（如机器人）进行恶意操作
 */

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

/**
 * @project: ssm_sms
 * @description: 绘制验证码图片
 */
public class CreateVerifiCodeImage {
    //长度
    private static int WIDTH = 90;
    //宽度
    private static int HEIGHT = 35;
    //字符大小
    private static int FONT_SIZE = 20;
    //验证码
    private static char[] verifiCode;
    //验证码图片
    private static BufferedImage verifiCodeImage;

    /**
     * @description: 获取验证码图片
     * @param: no
     * @return: java.awt.image.BufferedImage
     */
    public static BufferedImage getVerifiCodeImage() {
        // 创建验证码的图片
        verifiCodeImage = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_BGR);//创建一个对象
        Graphics graphics = verifiCodeImage.getGraphics();
        //随机生成验证码
        verifiCode = generateCheckCode();
        //绘制背景
        drawBackground(graphics);
        //绘制随机字符
        drawRands(graphics, verifiCode);
        graphics.dispose();
        return verifiCodeImage;
    }

    /**
     * @description: 获取验证码
     * @param: no
     * @return: char[]
     */
    public static char[] getVerifiCode() {
        return verifiCode;
    }

    /**
     * @description: 随机生成验证码
     * @param: no
     * @return: char[]
     */
    private static char[] generateCheckCode() {
        //设置字符集
        String chars = "0123456789abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        //随机4位
        char[] rands = new char[4];
        for (int i = 0; i < 4; i++) {
            //随机0-61即字符集
            int rand = (int) (Math.random() * (10 + 26 * 2));
            rands[i] = chars.charAt(rand);
        }
        return rands;
    }

    /**
     * @description: 绘制验证码
     * @param: g
     * @param: rands
     * @return: void
     */
    private static void drawRands(Graphics g, char[] rands) {
        g.setFont(new Font("Console", Font.BOLD, FONT_SIZE));
        for (int i = 0; i < rands.length; i++) {
            //为字体随机颜色
            g.setColor(getRandomColor());
            //设置y坐标以及计算x坐标
            g.drawString("" + rands[i], i * FONT_SIZE + 10, 25);
        }
    }

    /**
     * @description: 绘制验证码图片背景
     * @param: g
     * @return: void
     */
    private static void drawBackground(Graphics g) {
        //设置背景色为白色
        g.setColor(Color.white);
        //填充
        g.fillRect(0, 0, WIDTH, HEIGHT);
        // 绘制验证码干扰点
        for (int i = 0; i < 200; i++) {
            int x = (int) (Math.random() * WIDTH);
            int y = (int) (Math.random() * HEIGHT);
            //生成随机颜色
            g.setColor(getRandomColor());
            //绘制像素点
            g.drawOval(x, y, 1, 1);

        }
    }

    /**
     * @description: 获取随机颜色
     * @param: no
     * @return: java.awt.Color
     */
    private static Color getRandomColor() {
        Random ran = new Random();//绘制随机对象
        return new Color(ran.nextInt(220), ran.nextInt(220), ran.nextInt(220));
    }
}

