package quqe
{
   import __AS3__.vec.Vector;
   import cypujavop.Zekumiz;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Hidad;


   public class Baliq extends Tego
   {
      public function Baliq(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.statuses_=new Vector.<Zekumiz>();
         super(param1,param2);
         return;
      }

      public var tickId_:int;

      public var tickTime_:int;

      public var statuses_:Vector.<Zekumiz>;

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
            Hidad.dub(this.statuses_[_loc3_]);
            _loc3_++;
         }
         this.statuses_.length=Math.min(_loc2_,this.statuses_.length);
         while(this.statuses_.length<_loc2_)
         {
            this.statuses_.push(Hidad.mapego(Zekumiz) as Zekumiz);
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