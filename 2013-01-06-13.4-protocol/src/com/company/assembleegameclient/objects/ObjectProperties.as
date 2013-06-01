package com.company.assembleegameclient.objects
{
[CLASS1298]   import flash.utils.Dictionary;
   import gawulu.Cuqicyh;


   public class ObjectProperties extends Object
   {
      public function ObjectProperties(param1:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         this.cakikypot=new Dictionary();
         super();
         if(param1==null)
         {
            return;
         }
         this.type_=int(param1.@type);
         this.id_=String(param1.@id);
         this.wimo=this.id_;
         if(param1.hasOwnProperty("DisplayId"))
         {
            this.wimo=param1.DisplayId;
         }
         this.vitaqiwos=param1.hasOwnProperty("ShadowSize")?param1.ShadowSize:100;
         this.fad=param1.hasOwnProperty("Player");
         this.isEnemy_=param1.hasOwnProperty("Enemy");
         this.ludebil=param1.hasOwnProperty("DrawOnGround");
         if((this.ludebil)||(param1.hasOwnProperty("DrawUnder")))
         {
            this.tep=true;
         }
         this.occupySquare_=param1.hasOwnProperty("OccupySquare");
         this.tony=param1.hasOwnProperty("FullOccupy");
         this.enemyOccupySquare_=param1.hasOwnProperty("EnemyOccupySquare");
         this.static_=param1.hasOwnProperty("Static");
         this.tokodyz=param1.hasOwnProperty("NoMiniMap");
         this.protectFromGroundDamage_=param1.hasOwnProperty("ProtectFromGroundDamage");
         this.protectFromSink_=param1.hasOwnProperty("ProtectFromSink");
         this.flying_=param1.hasOwnProperty("Flying");
         this.renu=param1.hasOwnProperty("ShowName");
         this.ryn=param1.hasOwnProperty("DontFaceAttacks");
         if(param1.hasOwnProperty("Z"))
         {
            this.z_=Number(param1.Z);
         }
         if(param1.hasOwnProperty("Color"))
         {
            this.color_=uint(param1.Color);
         }
         if(param1.hasOwnProperty("Size"))
         {
            this.hije=this.cebi=param1.Size;
         }
         else
         {
            if(param1.hasOwnProperty("MinSize"))
            {
               this.hije=param1.MinSize;
            }
            if(param1.hasOwnProperty("MaxSize"))
            {
               this.cebi=param1.MaxSize;
            }
            if(param1.hasOwnProperty("SizeStep"))
            {
               this.luticu=param1.SizeStep;
            }
         }
         this.rurilupi=param1.hasOwnProperty("OldSound")?String(param1.OldSound):null;
         for each (_loc2_ in param1.Projectile)
         {
            _loc4_=int(_loc2_.@id);
            this.cakikypot[_loc4_]=new Fimy(_loc2_);
         }
         this.zojo=param1.hasOwnProperty("AngleCorrection")?Number(param1.AngleCorrection)*Math.PI/4:0;
         this.rotation_=param1.hasOwnProperty("Rotation")?param1.Rotation:0;
         if(param1.hasOwnProperty("BloodProb"))
         {
            this.vazeniki=Number(param1.BloodProb);
         }
         if(param1.hasOwnProperty("BloodColor"))
         {
            this.gapi=uint(param1.BloodColor);
         }
         if(param1.hasOwnProperty("ShadowColor"))
         {
            this.fadeb=uint(param1.ShadowColor);
         }
         for each (_loc3_ in param1.Sound)
         {
            if(this.penusir==null)
            {
               this.penusir={};
            }
            this.penusir[int(_loc3_.@id)]=_loc3_.toString();
         }
         if(param1.hasOwnProperty("Portrait"))
         {
            this.sedi=new Dabufyhut(XML(param1.Portrait));
         }
         if(param1.hasOwnProperty("WhileMoving"))
         {
            this.cazybu=new WhileMovingProperties(XML(param1.WhileMoving));
         }
         return;
      }

      public var type_:int;

      public var id_:String;

      public var wimo:String;

      public var vitaqiwos:int;

      public var fad:Boolean = false;

      public var isEnemy_:Boolean = false;

      public var ludebil:Boolean = false;

      public var tep:Boolean = false;

      public var occupySquare_:Boolean = false;

      public var tony:Boolean = false;

      public var enemyOccupySquare_:Boolean = false;

      public var static_:Boolean = false;

      public var tokodyz:Boolean = false;

      public var protectFromGroundDamage_:Boolean = false;

      public var protectFromSink_:Boolean = false;

      public var z_:Number = 0;

      public var flying_:Boolean = false;

      public var color_:uint = 16777215;

      public var renu:Boolean = false;

      public var ryn:Boolean = false;

      public var vazeniki:Number = 0.0;

      public var gapi:uint = 16711680;

      public var fadeb:uint = 0;

      public var penusir:Object = null;

      public var sedi:Qeh = null;

      public var hije:int = 100;

      public var cebi:int = 100;

      public var luticu:int = 5;

      public var cazybu:WhileMovingProperties = null;

      public var rurilupi:String = null;

      public var cakikypot:Dictionary;

      public var zojo:Number = 0;

      public var rotation_:Number = 0;

      public function kanywynid() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         if(this.penusir==null)
         {
            return;
         }
         for each (_loc1_ in this.penusir)
         {
            Cuqicyh.load(_loc1_);
         }
         return;
      }

      public function vucu() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.hije==this.cebi)
         {
            return this.hije;
         }
         var _loc1_:int = (this.cebi-this.hije)/this.luticu;
         return this.hije+int(Math.random()*_loc1_)*this.luticu;
      }
   }
[/CLASS]
}[CLASS1299]

   class WhileMovingProperties extends Object
   {
      function WhileMovingProperties(param1:XML) {
         super();
         if(param1.hasOwnProperty("Z"))
         {
            this.z_=Number(param1.Z);
         }
         this.flying_=param1.hasOwnProperty("Flying");
         return;
      }

      public var z_:Number = 0.0;

      public var flying_:Boolean = false;
   }
[/CLASS]