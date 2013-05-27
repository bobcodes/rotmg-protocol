package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import vozireni.Pozunubu;


   public class ObjectProperties extends Object
   {
      public function ObjectProperties(param1:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         this.pobakigas=new Dictionary();
         super();
         if(param1==null)
         {
            return;
         }
         this.type_=int(param1.@type);
         this.id_=String(param1.@id);
         this.resanacuf=this.id_;
         if(param1.hasOwnProperty("DisplayId"))
         {
            this.resanacuf=param1.DisplayId;
         }
         this.kehypu=param1.hasOwnProperty("ShadowSize")?param1.ShadowSize:100;
         this.kohyfes=param1.hasOwnProperty("Player");
         this.isEnemy_=param1.hasOwnProperty("Enemy");
         this.gevonob=param1.hasOwnProperty("DrawOnGround");
         if((this.gevonob)||(param1.hasOwnProperty("DrawUnder")))
         {
            this.pabaqoho=true;
         }
         this.occupySquare_=param1.hasOwnProperty("OccupySquare");
         this.ryqeji=param1.hasOwnProperty("FullOccupy");
         this.enemyOccupySquare_=param1.hasOwnProperty("EnemyOccupySquare");
         this.static_=param1.hasOwnProperty("Static");
         this.zegicas=param1.hasOwnProperty("NoMiniMap");
         this.protectFromGroundDamage_=param1.hasOwnProperty("ProtectFromGroundDamage");
         this.protectFromSink_=param1.hasOwnProperty("ProtectFromSink");
         this.flying_=param1.hasOwnProperty("Flying");
         this.jobitam=param1.hasOwnProperty("ShowName");
         this.tiqo=param1.hasOwnProperty("DontFaceAttacks");
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
            this.qynysuza=this.sifipypu=param1.Size;
         }
         else
         {
            if(param1.hasOwnProperty("MinSize"))
            {
               this.qynysuza=param1.MinSize;
            }
            if(param1.hasOwnProperty("MaxSize"))
            {
               this.sifipypu=param1.MaxSize;
            }
            if(param1.hasOwnProperty("SizeStep"))
            {
               this.qazibo=param1.SizeStep;
            }
         }
         this.vadufy=param1.hasOwnProperty("OldSound")?String(param1.OldSound):null;
         for each (_loc2_ in param1.Projectile)
         {
            _loc4_=int(_loc2_.@id);
            this.pobakigas[_loc4_]=new Rymes(_loc2_);
         }
         this.qus=param1.hasOwnProperty("AngleCorrection")?Number(param1.AngleCorrection)*Math.PI/4:0;
         this.rotation_=param1.hasOwnProperty("Rotation")?param1.Rotation:0;
         if(param1.hasOwnProperty("BloodProb"))
         {
            this.woquto=Number(param1.BloodProb);
         }
         if(param1.hasOwnProperty("BloodColor"))
         {
            this.dasigily=uint(param1.BloodColor);
         }
         if(param1.hasOwnProperty("ShadowColor"))
         {
            this.soh=uint(param1.ShadowColor);
         }
         for each (_loc3_ in param1.Sound)
         {
            if(this.qecolune==null)
            {
               this.qecolune={};
            }
            this.qecolune[int(_loc3_.@id)]=_loc3_.toString();
         }
         if(param1.hasOwnProperty("Portrait"))
         {
            this.sypewe=new Jerakupej(XML(param1.Portrait));
         }
         if(param1.hasOwnProperty("WhileMoving"))
         {
            this.giqacod=new WhileMovingProperties(XML(param1.WhileMoving));
         }
         return;
      }

      public var type_:int;

      public var id_:String;

      public var resanacuf:String;

      public var kehypu:int;

      public var kohyfes:Boolean = false;

      public var isEnemy_:Boolean = false;

      public var gevonob:Boolean = false;

      public var pabaqoho:Boolean = false;

      public var occupySquare_:Boolean = false;

      public var ryqeji:Boolean = false;

      public var enemyOccupySquare_:Boolean = false;

      public var static_:Boolean = false;

      public var zegicas:Boolean = false;

      public var protectFromGroundDamage_:Boolean = false;

      public var protectFromSink_:Boolean = false;

      public var z_:Number = 0;

      public var flying_:Boolean = false;

      public var color_:uint = 16777215;

      public var jobitam:Boolean = false;

      public var tiqo:Boolean = false;

      public var woquto:Number = 0.0;

      public var dasigily:uint = 16711680;

      public var soh:uint = 0;

      public var qecolune:Object = null;

      public var sypewe:Sirador = null;

      public var qynysuza:int = 100;

      public var sifipypu:int = 100;

      public var qazibo:int = 5;

      public var giqacod:WhileMovingProperties = null;

      public var vadufy:String = null;

      public var pobakigas:Dictionary;

      public var qus:Number = 0;

      public var rotation_:Number = 0;

      public function galopy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         if(this.qecolune==null)
         {
            return;
         }
         for each (_loc1_ in this.qecolune)
         {
            Pozunubu.load(_loc1_);
         }
         return;
      }

      public function wepilyby() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qynysuza==this.sifipypu)
         {
            return this.qynysuza;
         }
         var _loc1_:int = (this.sifipypu-this.qynysuza)/this.qazibo;
         return this.qynysuza+int(Math.random()*_loc1_)*this.qazibo;
      }
   }

}

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
