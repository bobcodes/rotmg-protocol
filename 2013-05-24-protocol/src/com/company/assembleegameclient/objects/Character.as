package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import vozireni.Pozunubu;


   public class Character extends GameObject
   {
      public function Character(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         this.gogufajip=param1.hasOwnProperty("HitSound")?String(param1.HitSound):"monster/default_hit";
         Pozunubu.load(this.gogufajip);
         this.qeme=param1.hasOwnProperty("DeathSound")?String(param1.DeathSound):"monster/default_death";
         Pozunubu.load(this.qeme);
         return;
      }

      public var gogufajip:String;

      public var qeme:String;

      override public function damage(param1:int, param2:int, param3:Vector.<uint>, param4:Boolean, param5:Projectile) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super.damage(param1,param2,param3,param4,param5);
         if(hojucope)
         {
            Pozunubu.play(this.qeme);
         }
         else
         {
            Pozunubu.play(this.gogufajip);
         }
         return;
      }
   }

}