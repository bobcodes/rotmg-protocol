package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import dorepoji.Kadido;


   public class ObjectProperties extends Object
   {
      public function ObjectProperties(param1:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         this.fifinepa=new Dictionary();
         super();
         if(param1==null)
         {
            return;
         }
         this.type_=int(param1.@type);
         this.id_=String(param1.@id);
         this.cuzafudap=this.id_;
         if(param1.hasOwnProperty("DisplayId"))
         {
            this.cuzafudap=param1.DisplayId;
         }
         this.nyn=param1.hasOwnProperty("ShadowSize")?param1.ShadowSize:100;
         this.coryjorah=param1.hasOwnProperty("Player");
         this.isEnemy_=param1.hasOwnProperty("Enemy");
         this.cifydas=param1.hasOwnProperty("DrawOnGround");
         if((this.cifydas)||(param1.hasOwnProperty("DrawUnder")))
         {
            this.jucisywu=true;
         }
         this.occupySquare_=param1.hasOwnProperty("OccupySquare");
         this.faser=param1.hasOwnProperty("FullOccupy");
         this.enemyOccupySquare_=param1.hasOwnProperty("EnemyOccupySquare");
         this.static_=param1.hasOwnProperty("Static");
         this.cet=param1.hasOwnProperty("NoMiniMap");
         this.protectFromGroundDamage_=param1.hasOwnProperty("ProtectFromGroundDamage");
         this.protectFromSink_=param1.hasOwnProperty("ProtectFromSink");
         this.flying_=param1.hasOwnProperty("Flying");
         this.lysyvanec=param1.hasOwnProperty("ShowName");
         this.zyvazufop=param1.hasOwnProperty("DontFaceAttacks");
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
            this.tosed=this.hakilow=param1.Size;
         }
         else
         {
            if(param1.hasOwnProperty("MinSize"))
            {
               this.tosed=param1.MinSize;
            }
            if(param1.hasOwnProperty("MaxSize"))
            {
               this.hakilow=param1.MaxSize;
            }
            if(param1.hasOwnProperty("SizeStep"))
            {
               this.wygos=param1.SizeStep;
            }
         }
         this.zopa=param1.hasOwnProperty("OldSound")?String(param1.OldSound):null;
         for each (_loc2_ in param1.Projectile)
         {
            _loc4_=int(_loc2_.@id);
            this.fifinepa[_loc4_]=new Zygero(_loc2_);
         }
         this.nunawonoj=param1.hasOwnProperty("AngleCorrection")?Number(param1.AngleCorrection)*Math.PI/4:0;
         this.rotation_=param1.hasOwnProperty("Rotation")?param1.Rotation:0;
         if(param1.hasOwnProperty("BloodProb"))
         {
            this.zamybycu=Number(param1.BloodProb);
         }
         if(param1.hasOwnProperty("BloodColor"))
         {
            this.kecegahu=uint(param1.BloodColor);
         }
         if(param1.hasOwnProperty("ShadowColor"))
         {
            this.vucylunar=uint(param1.ShadowColor);
         }
         for each (_loc3_ in param1.Sound)
         {
            if(this.logodeky==null)
            {
               this.logodeky={};
            }
            this.logodeky[int(_loc3_.@id)]=_loc3_.toString();
         }
         if(param1.hasOwnProperty("Portrait"))
         {
            this.kacezy=new Bedypy(XML(param1.Portrait));
         }
         if(param1.hasOwnProperty("WhileMoving"))
         {
            this.fykuzomic=new WhileMovingProperties(XML(param1.WhileMoving));
         }
         return;
      }

      public var type_:int;

      public var id_:String;

      public var cuzafudap:String;

      public var nyn:int;

      public var coryjorah:Boolean = false;

      public var isEnemy_:Boolean = false;

      public var cifydas:Boolean = false;

      public var jucisywu:Boolean = false;

      public var occupySquare_:Boolean = false;

      public var faser:Boolean = false;

      public var enemyOccupySquare_:Boolean = false;

      public var static_:Boolean = false;

      public var cet:Boolean = false;

      public var protectFromGroundDamage_:Boolean = false;

      public var protectFromSink_:Boolean = false;

      public var z_:Number = 0;

      public var flying_:Boolean = false;

      public var color_:uint = 16777215;

      public var lysyvanec:Boolean = false;

      public var zyvazufop:Boolean = false;

      public var zamybycu:Number = 0.0;

      public var kecegahu:uint = 16711680;

      public var vucylunar:uint = 0;

      public var logodeky:Object = null;

      public var kacezy:Sep = null;

      public var tosed:int = 100;

      public var hakilow:int = 100;

      public var wygos:int = 5;

      public var fykuzomic:WhileMovingProperties = null;

      public var zopa:String = null;

      public var fifinepa:Dictionary;

      public var nunawonoj:Number = 0;

      public var rotation_:Number = 0;

      public function qeti() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = null;
         if(this.logodeky==null)
         {
            return;
         }
         for each (_loc1_ in this.logodeky)
         {
            Kadido.load(_loc1_);
         }
         return;
      }

      public function dahekuq() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.tosed==this.hakilow)
         {
            return this.tosed;
         }
         var _loc1_:int = (this.hakilow-this.tosed)/this.wygos;
         return this.tosed+int(Math.random()*_loc1_)*this.wygos;
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
