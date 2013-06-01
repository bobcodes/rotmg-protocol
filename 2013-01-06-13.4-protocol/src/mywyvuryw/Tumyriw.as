package mywyvuryw
{
[CLASS1048]   import __AS3__.vec.Vector;
   import flash.utils.IDataInput;


   public class Tumyriw extends Daqu
   {
      public function Tumyriw(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.offer_=new Vector.<Boolean>();
         super(param1,param2);
         return;
      }

      public var offer_:Vector.<Boolean>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.offer_.length=0;
         var _loc2_:int = param1.readShort();
         var _loc3_:* = 0;
         while(_loc3_<_loc2_)
         {
            this.offer_.push(param1.readBoolean());
            _loc3_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("TRADECHANGED","offer_");
      }
   }
[/CLASS]
}