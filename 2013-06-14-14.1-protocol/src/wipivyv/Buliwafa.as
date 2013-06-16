package wipivyv
{
   import __AS3__.vec.Vector;
   import aaa.PhysicalObjectData;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Tocaniw;


   public class Buliwafa extends Tezypama
   {
      public function Buliwafa(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.statuses_=new Vector.<PhysicalObjectData>();
         super(param1,param2);
         return;
      }

      public var tickId_:int;

      public var tickTime_:int;

      public var statuses_:Vector.<PhysicalObjectData>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         this.tickId_=param1.readInt();
         this.tickTime_=param1.readInt();
         var _loc2_:int = param1.readShort();
         _loc3_=_loc2_;
         while(_loc3_<this.statuses_.length)
         {
            Tocaniw.rilo(this.statuses_[_loc3_]);
            _loc3_++;
         }
         this.statuses_.length=Math.min(_loc2_,this.statuses_.length);
         while(this.statuses_.length<_loc2_)
         {
            this.statuses_.push(Tocaniw.dyzovot(PhysicalObjectData) as PhysicalObjectData);
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

}