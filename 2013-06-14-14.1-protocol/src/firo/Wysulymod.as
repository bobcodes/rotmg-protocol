package firo
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataOutput;


   public class Wysulymod extends Jicogu
   {
      public function Wysulymod(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.myOffer_=new Vector.<Boolean>();
         this.yourOffer_=new Vector.<Boolean>();
         super(param1,param2);
         return;
      }

      public var myOffer_:Vector.<Boolean>;

      public var yourOffer_:Vector.<Boolean>;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         param1.writeShort(this.myOffer_.length);
         _loc2_=0;
         while(_loc2_<this.myOffer_.length)
         {
            param1.writeBoolean(this.myOffer_[_loc2_]);
            _loc2_++;
         }
         param1.writeShort(this.yourOffer_.length);
         _loc2_=0;
         while(_loc2_<this.yourOffer_.length)
         {
            param1.writeBoolean(this.yourOffer_[_loc2_]);
            _loc2_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("ACCEPTTRADE","myOffer_","yourOffer_");
      }
   }

}