package kunkun.controller;

import java.util.HashSet;
import java.util.Random;
import java.util.Scanner;
import java.util.Stack;

public class RandomFormula {
    final int numberTotal;
    final int formulaTotal;
    final int numberRange;
    final int maxResult;
    final boolean includeMulAndDiv;
    final boolean includeNegNum;

    /**
    public RandomFormula() {
        this.numberTotal = 2;
        this.formulaTotal = 10;
        this.numberRange = 100;
        this.maxResult = 10000;
        this.includeMulAndDiv = false;
        this.includeNegNum = false;
    }
    */

    public RandomFormula(int numberTotal, int formulaTotal, int numberRange, int maxResult, boolean includeMulAndDiv,
                         boolean includeNegNum) {
        this.numberTotal = numberTotal;
        this.formulaTotal = formulaTotal;
        this.numberRange = numberRange;
        this.maxResult = maxResult;
        this.includeMulAndDiv = includeMulAndDiv;
        this.includeNegNum = includeNegNum;
    }

    /**
     * 获取随机数
     *
     * @return 返回一个指定范围内的数字
     */
    public int getRandomNumber() {
        //Random rand = new Random();
        Random rand = new Random();
        if (this.includeNegNum) {
            return (rand.nextInt(this.numberRange) + 1) * (rand.nextDouble() > 0.5 ? 1 : -1);
        } else {
            return rand.nextInt(this.numberRange) + 1;
        }
    }

    /**
     * 得到一个随机的运算符
     *
     * @return返回运算符
     */
    public String getRandomOperator() {
        Random rand = new Random();
        String[] operations = { "+", "-", "*", "/" };
        return operations[rand.nextInt((this.includeMulAndDiv == true) ? 4 : 2)];
    }

    /**
     * 生成算式
     *
     * @return 返回算式
     */
    public String generateFormula() {
        String formula = "";
        for (int i = 0; i < this.numberTotal; i++) {
            if (i >= this.numberTotal - 1) {
                formula += isNegNum(this.getRandomNumber());
                continue;
            }
            formula += isNegNum(this.getRandomNumber()) + " " + this.getRandomOperator() + " ";
        }
        return formula;
    }
    /**
     * 生成算式集合
     *
     * @return
     */
   public HashSet<String> generateFormulas()
   {
       HashSet<String> set = new HashSet<String>();
       while(set.size()<=this.formulaTotal)
       {
           String formula = this.generateFormula();
           if(this.maxResult>=this.generateAnswer(formula))
               set.add(formula);
       }
       return set;
   }
    /**
     * 若负数，加括号
     *
     * @param num
     * @return
     */
    public String isNegNum(int num) {
        if (num < 0) {
            return "(" + num + ")";
        }
        return "" + num;
    }

    /**
     * 生成算式结果
     *
     * @param formula
     * @return
     */
    public int generateAnswer(String formula) {
        int length = 0;
        String[] formulaArr = formula.split(" ");
        String operators = "+-*/";
        Stack<Integer> opNumbers = new Stack<Integer>();
        Stack<String> opOperators = new Stack<String>();
        opOperators.add("#");//字符栈中存储个#号，防止栈空
        while (length < formulaArr.length) {
            String op = formulaArr[length++];
            if (operators.indexOf(op) > -1) {// 若是运算符,判断优先级
                String sign = opOperators.peek();
                int priority = compare(op, sign);// 要入栈的跟栈顶的相比
                if (priority >= 0) {// 如果要入栈的运算符高或者相等,出栈两个数字,和之前的运算符,计算后,将数字入栈,将字符入栈
                    opNumbers.add(compute(opOperators, opNumbers));
                    opOperators.add(op);
                } else {// 入栈运算符优先级低，直接入栈
                    opOperators.add(op);
                }
                continue;
            }
            // 若是数字,则入栈
            opNumbers.add(Integer.parseInt(op.replace("(", "").replace(")", "")));
        }
        while (opOperators.peek() != "#") {
            opNumbers.add(compute(opOperators, opNumbers));
        }
        return opNumbers.pop();
    }
    /**
     * 比较运算优先级
     *
     * @return
     */
    public int compare(String operator1, String operator2) {
        int res = 0;
        switch (operator1) {
            case "+":
            case "-":
                if (operator2.equals("+") || operator2.equals("-") || operator2.equals("*") || operator2.equals("/")) {
                    res = 1;
                } else {
                    res = -1;
                }
                break;
            case "*":
            case "/":
                if (operator2.equals("*") || operator2.equals("/")) {
                    res = 1;
                } else {
                    res = -1;
                }
                break;
        }
        return res;
    }
    /**
     * 算式求值
     *
     * @return
     */
    public int compute(Stack<String> opOperators, Stack<Integer> opNumbers) {
        int num2 = opNumbers.pop();
        int num1 = opNumbers.pop();
        String _op = opOperators.pop();
        int result = 0;
        switch (_op) {
            case "+":
                result = num1 + num2;
                break;
            case "-":
                result = num1 - num2;
                break;
            case "*":
                result = num1 * num2;
                break;
            case "/":
                result = num1 / num2;
                break;
        }
        return result;
    }
    public int[] generateAnswers(HashSet<String> set) {
        int[] arr = new int[set.size()];
        int i = 0;
        for (String str : set) {
            arr[i++] = generateAnswer(str);
        }
        return arr;
    }
}
