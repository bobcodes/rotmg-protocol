package com.company.assembleegameclient.objects
{
[CLASS1530]   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.ConditionEffect;


   public class Fimy extends Object
   {
      public function Fimy(param1:XML) {
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
            this.effects_.push(ConditionEffect.vofataj(String(_loc2_)));
         }
         this.sezen=param1.hasOwnProperty("MultiHit");
         this.nyly=param1.hasOwnProperty("PassesCover");
         this.qeha=param1.hasOwnProperty("ArmorPiercing");
         this.gidodyvab=param1.hasOwnProperty("ParticleTrail");
         this.samazy=param1.hasOwnProperty("Wavy");
         this.jidokapit=param1.hasOwnProperty("Parametric");
         this.vybybuma=param1.hasOwnProperty("Boomerang");
         this.fucuj=param1.hasOwnProperty("Amplitude")?Number(param1.Amplitude):0.0;
         this.poku=param1.hasOwnProperty("Frequency")?Number(param1.Frequency):1;
         this.tugovosuj=param1.hasOwnProperty("Magnitude")?Number(param1.Magnitude):3;
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

      public var sezen:Boolean;

      public var nyly:Boolean;

      public var qeha:Boolean;

      public var gidodyvab:Boolean;

      public var samazy:Boolean;

      public var jidokapit:Boolean;

      public var vybybuma:Boolean;

      public var fucuj:Number;

      public var poku:Number;

      public var tugovosuj:Number;
   }
[/CLASS]
}