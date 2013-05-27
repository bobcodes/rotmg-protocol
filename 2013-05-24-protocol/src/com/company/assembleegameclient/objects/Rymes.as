package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.ConditionEffect;


   public class Rymes extends Object
   {
      public function Rymes(param1:XML) {
         var _loc5_:* = true;
         var _loc6_:* = false;
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
            this.effects_.push(ConditionEffect.bepavy(String(_loc2_)));
         }
         this.fabyfupah=param1.hasOwnProperty("MultiHit");
         this.ziqi=param1.hasOwnProperty("PassesCover");
         this.moqu=param1.hasOwnProperty("ArmorPiercing");
         this.nip=param1.hasOwnProperty("ParticleTrail");
         this.nihiku=param1.hasOwnProperty("Wavy");
         this.cuta=param1.hasOwnProperty("Parametric");
         this.fesigavaz=param1.hasOwnProperty("Boomerang");
         this.rije=param1.hasOwnProperty("Amplitude")?Number(param1.Amplitude):0.0;
         this.mipynoh=param1.hasOwnProperty("Frequency")?Number(param1.Frequency):1;
         this.wudeqyd=param1.hasOwnProperty("Magnitude")?Number(param1.Magnitude):3;
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

      public var fabyfupah:Boolean;

      public var ziqi:Boolean;

      public var moqu:Boolean;

      public var nip:Boolean;

      public var nihiku:Boolean;

      public var cuta:Boolean;

      public var fesigavaz:Boolean;

      public var rije:Number;

      public var mipynoh:Number;

      public var wudeqyd:Number;
   }

}