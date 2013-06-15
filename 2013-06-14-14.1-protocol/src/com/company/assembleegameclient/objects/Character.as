package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import dorepoji.Kadido;


   public class Character extends GameObject
   {
      public function Character(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         this.rub=param1.hasOwnProperty("HitSound")?String(param1.HitSound):"monster/default_hit";
         Kadido.load(this.rub);
         this.vujivi=param1.hasOwnProperty("DeathSound")?String(param1.DeathSound):"monster/default_death";
         Kadido.load(this.vujivi);
         return;
      }

      public var rub:String;

      public var vujivi:String;

      override public function damage(param1:int, param2:int, param3:Vector.<uint>, param4:Boolean, param5:Projectile) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super.damage(param1,param2,param3,param4,param5);
         if(logi)
         {
            Kadido.play(this.vujivi);
         }
         else
         {
            Kadido.play(this.rub);
         }
         return;
      }
   }

}