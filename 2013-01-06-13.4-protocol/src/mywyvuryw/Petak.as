package mywyvuryw
{
[CLASS1511]   import __AS3__.vec.Vector;
   import jyz.Tydo;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Deqipe;


   public class Petak extends Daqu
   {
      public function Petak(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.statuses_=new Vector.<Tydo>();
         super(param1,param2);
         return;
      }

      public var tickId_:int;

      public var tickTime_:int;

      public var statuses_:Vector.<Tydo>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         this.tickId_=param1.readInt();
         this.tickTime_=param1.readInt();
         var _loc2_:int = param1.readShort();
         _loc3_=_loc2_;
         while(_loc3_<this.statuses_.length)
         {
            Deqipe.hasa(this.statuses_[_loc3_]);
            _loc3_++;
         }
         this.statuses_.length=Math.min(_loc2_,this.statuses_.length);
         while(this.statuses_.length<_loc2_)
         {
            this.statuses_.push(Deqipe.wesijah(Tydo) as Tydo);
         }
         _loc3_=0;
         while(_loc3_<_loc2_)
         {
            this.statuses_[_loc3_].parseFromInput(param1);
            _loc3_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("NEW_TICK","tickId_","tickTime_","statuses_");
      }
   }
[/CLASS]
}