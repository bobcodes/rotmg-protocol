package quqe
{
   import __AS3__.vec.Vector;
   import cypujavop.Quwusyve;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Hidad;


   public class Kugupyder extends Tego
   {
      public function Kugupyder(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.myItems_=new Vector.<Quwusyve>();
         this.yourItems_=new Vector.<Quwusyve>();
         super(param1,param2);
         return;
      }

      public var myItems_:Vector.<Quwusyve>;

      public var yourName_:String;

      public var yourItems_:Vector.<Quwusyve>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:int = param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.myItems_.length)
         {
            Hidad.dub(this.myItems_[_loc2_]);
            _loc2_++;
         }
         this.myItems_.length=Math.min(_loc3_,this.myItems_.length);
         while(this.myItems_.length<_loc3_)
         {
            this.myItems_.push(Hidad.mapego(Quwusyve) as Quwusyve);
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
            Hidad.dub(this.yourItems_[_loc2_]);
            _loc2_++;
         }
         this.yourItems_.length=Math.min(_loc3_,this.yourItems_.length);
         while(this.yourItems_.length<_loc3_)
         {
            this.yourItems_.push(Hidad.mapego(Quwusyve) as Quwusyve);
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