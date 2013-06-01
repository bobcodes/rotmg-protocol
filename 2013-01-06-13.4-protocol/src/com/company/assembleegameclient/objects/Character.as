package com.company.assembleegameclient.objects
{
[CLASS861]   import __AS3__.vec.Vector;
   import gawulu.Cuqicyh;


   public class Character extends GameObject
   {
      public function Character(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.wef=param1.hasOwnProperty("HitSound")?String(param1.HitSound):"monster/default_hit";
         Cuqicyh.load(this.wef);
         this.potyn=param1.hasOwnProperty("DeathSound")?String(param1.DeathSound):"monster/default_death";
         Cuqicyh.load(this.potyn);
         return;
      }

      public var wef:String;

      public var potyn:String;

      override public function damage(param1:int, param2:int, param3:Vector.<uint>, param4:Boolean, param5:Projectile) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super.damage(param1,param2,param3,param4,param5);
         if(cesulo)
         {
            Cuqicyh.play(this.potyn);
         }
         else
         {
            Cuqicyh.play(this.wef);
         }
         return;
      }
   }
[/CLASS]
}