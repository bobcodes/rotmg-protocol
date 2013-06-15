package rikewu
{
   import flash.utils.ByteArray;
   import flash.geom.Rectangle;


   public class Nama extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nama(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.interests=[];
         super();
         this.name=param1;
         return;
      }

      public static const faforu:uint = 1;

      public static const lojebywo:uint = 2;

      public static function buwopena(param1:ByteArray) : Nama {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Nama = new Nama(param1.readUTF());
         _loc2_.type=param1.readUnsignedInt();
         _loc2_.cekarov=param1.readUnsignedInt();
         _loc2_.low=param1.readDouble();
         _loc2_.levycen=param1.readDouble();
         _loc2_.kynaloqu=param1.readBoolean();
         var _loc3_:uint = param1.readUnsignedInt();
         while(_loc3_)
         {
            _loc2_.interests.push(Vakegopo.buwopena(param1));
            _loc3_--;
         }
         return _loc2_;
      }

      public var type:uint;

      public var name:String;

      public var vocyj:int = 1;

      public var low:Number;

      public var levycen:Number;

      public var fixed:Boolean;

      public var hunet:uint;

      public var kynaloqu:Boolean;

      public var interests:Array;

      public var rect:Rectangle;

      public var cekarov:int;

      public function sosocomef(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!isNaN(param1)&&!this.fixed)
         {
            if(isNaN(this.low))
            {
               this.low=param1;
               this.levycen=param1;
            }
            if(param1>this.levycen)
            {
               this.levycen=param1;
            }
            if(param1<this.low)
            {
               this.low=param1;
            }
         }
         return;
      }

      public function kyby(param1:ByteArray) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Vakegopo = null;
         param1.writeUTF(this.name);
         param1.writeUnsignedInt(this.type);
         param1.writeUnsignedInt(this.cekarov);
         param1.writeDouble(this.low);
         param1.writeDouble(this.levycen);
         param1.writeBoolean(this.kynaloqu);
         param1.writeUnsignedInt(this.interests.length);
         for each (_loc2_ in this.interests)
         {
            _loc2_.kyby(param1);
         }
         return;
      }
   }

}