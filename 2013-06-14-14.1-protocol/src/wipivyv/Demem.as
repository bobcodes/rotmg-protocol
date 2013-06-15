package wipivyv
{
   import __AS3__.vec.Vector;
   import dasefezy.Siluw;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Tocaniw;


   public class Demem extends Tezypama
   {
      public function Demem(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.myItems_=new Vector.<Siluw>();
         this.yourItems_=new Vector.<Siluw>();
         super(param1,param2);
         return;
      }

      public var myItems_:Vector.<Siluw>;

      public var yourName_:String;

      public var yourItems_:Vector.<Siluw>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:int = param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.myItems_.length)
         {
            Tocaniw.rilo(this.myItems_[_loc2_]);
            _loc2_++;
         }
         this.myItems_.length=Math.min(_loc3_,this.myItems_.length);
         while(this.myItems_.length<_loc3_)
         {
            this.myItems_.push(Tocaniw.dyzovot(Siluw) as Siluw);
         }
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            this.myItems_[_loc2_].parseFromInput(param1);
            _loc2_++;
         }
         this.yourName_=param1.readUTF();
         _loc3_=param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.yourItems_.length)
         {
            Tocaniw.rilo(this.yourItems_[_loc2_]);
            _loc2_++;
         }
         this.yourItems_.length=Math.min(_loc3_,this.yourItems_.length);
         while(this.yourItems_.length<_loc3_)
         {
            this.yourItems_.push(Tocaniw.dyzovot(Siluw) as Siluw);
         }
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            this.yourItems_[_loc2_].parseFromInput(param1);
            _loc2_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("TRADESTART","myItems_","yourName_","yourItems_");
      }
   }

}