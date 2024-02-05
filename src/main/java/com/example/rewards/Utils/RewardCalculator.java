package com.example.rewards.Utils;

public class RewardCalculator {

    public static int calculateReward(float value){
        int result = 0;
        if (value>100){
            result += (value-100)*2;
            return result + 50;
        }else if(value > 50 ){
            return (int)value - 50;
        }else {
            return 0;
        }
    }

}
