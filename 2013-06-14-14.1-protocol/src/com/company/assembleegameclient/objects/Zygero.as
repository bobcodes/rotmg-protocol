package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.ConditionEffect;


   public class Zygero extends Object
   {
      public function Zygero(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         super();
         this.bulletType_=int(param1.@id);
         this.objectId_=param1.ObjectId;
         this.lifetime_=int(param1.LifetimeMS);
         this.speed_=int(param1.Speed);
         this.size_=param1.hasOwnProperty("Size")?Number(param1.Size):-1;
         if(param1.hasOwnProperty("Damage"))
         {
            this.minDamage_=this.maxDamage_=int(param1.Damage);
         }
         else
         {
            this.minDamage_=int(param1.MinDamage);
            this.maxDamage_=int(param1.MaxDamage);
         }
         for each (_loc2_ in param1.ConditionEffect)
         {
            if(this.effects_==null)
            {
               this.effects_=new Vector.<uint>();
            }
            this.effects_.push(ConditionEffect.tikurokyr(String(_loc2_)));
         }
         this.rawysuke=param1.hasOwnProperty("MultiHit");
         this.siq=param1.hasOwnProperty("PassesCover");
         this.mecejy=param1.hasOwnProperty("ArmorPiercing");
         this.wij=param1.hasOwnProperty("ParticleTrail");
         this.saho=param1.hasOwnProperty("Wavy");
         this.kesonyca=param1.hasOwnProperty("Parametric");
         this.wun=param1.hasOwnProperty("Boomerang");
         this.lekumyva=param1.hasOwnProperty("Amplitude")?Number(param1.Amplitude):0.0;
         this.subu=param1.hasOwnProperty("Frequency")?Number(param1.Frequency):1;
         this.jar=param1.hasOwnProperty("Magnitude")?Number(param1.Magnitude):3;
         return;
      }

      public var bulletType_:int;

      public var objectId_:String;

      public var lifetime_:int;

      public var speed_:int;

      public var size_:int;

      public var minDamage_:int;

      public var maxDamage_:int;

      public var effects_:Vector.<uint> = null;

      public var rawysuke:Boolean;

      public var siq:Boolean;

      public var mecejy:Boolean;

      public var wij:Boolean;

      public var saho:Boolean;

      public var kesonyca:Boolean;

      public var wun:Boolean;

      public var lekumyva:Number;

      public var subu:Number;

      public var jar:Number;
   }

}