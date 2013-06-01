package cakajitez
{
[CLASS1898]   import flash.utils.ByteArray;
   import flash.geom.Rectangle;


   public class Rinicu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rinicu(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.interests=[];
         super();
         this.name=param1;
         return;
      }

      public static const pasal:uint = 1;

      public static const copukuvi:uint = 2;

      public static function ciwygeruk(param1:ByteArray) : Rinicu {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Rinicu = new Rinicu(param1.readUTF());
         _loc2_.type=param1.readUnsignedInt();
         _loc2_.rakahi=param1.readUnsignedInt();
         _loc2_.low=param1.readDouble();
         _loc2_.wubo=param1.readDouble();
         _loc2_.cisiz=param1.readBoolean();
         var _loc3_:uint = param1.readUnsignedInt();
         while(_loc3_)
         {
            _loc2_.interests.push(Lyviqih.ciwygeruk(param1));
            _loc3_--;
         }
         return _loc2_;
      }

      public var type:uint;

      public var name:String;

      public var fiji:int = 1;

      public var low:Number;

      public var wubo:Number;

      public var fixed:Boolean;

      public var docy:uint;

      public var cisiz:Boolean;

      public var interests:Array;

      public var rect:Rectangle;

      public var rakahi:int;

      public function qepulaluj(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!isNaN(param1)&&!this.fixed)
         {
            if(isNaN(this.low))
            {
               this.low=param1;
               this.wubo=param1;
            }
            if(param1>this.wubo)
            {
               this.wubo=param1;
            }
            if(param1<this.low)
            {
               this.low=param1;
            }
         }
         return;
      }

      public function matib(param1:ByteArray) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Lyviqih = null;
         param1.writeUTF(this.name);
         param1.writeUnsignedInt(this.type);
         param1.writeUnsignedInt(this.rakahi);
         param1.writeDouble(this.low);
         param1.writeDouble(this.wubo);
         param1.writeBoolean(this.cisiz);
         param1.writeUnsignedInt(this.interests.length);
         for each (_loc2_ in this.interests)
         {
            _loc2_.matib(param1);
         }
         return;
      }
   }
[/CLASS]
}