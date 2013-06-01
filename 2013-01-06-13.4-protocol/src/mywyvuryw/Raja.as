package mywyvuryw
{
[CLASS1047]   import __AS3__.vec.Vector;
   import jyz.Cygalusu;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Deqipe;


   public class Raja extends Daqu
   {
      public function Raja(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.myItems_=new Vector.<Cygalusu>();
         this.yourItems_=new Vector.<Cygalusu>();
         super(param1,param2);
         return;
      }

      public var myItems_:Vector.<Cygalusu>;

      public var yourName_:String;

      public var yourItems_:Vector.<Cygalusu>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:int = param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.myItems_.length)
         {
            Deqipe.hasa(this.myItems_[_loc2_]);
            _loc2_++;
         }
         this.myItems_.length=Math.min(_loc3_,this.myItems_.length);
         while(this.myItems_.length<_loc3_)
         {
            this.myItems_.push(Deqipe.wesijah(Cygalusu) as Cygalusu);
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
            Deqipe.hasa(this.yourItems_[_loc2_]);
            _loc2_++;
         }
         this.yourItems_.length=Math.min(_loc3_,this.yourItems_.length);
         while(this.yourItems_.length<_loc3_)
         {
            this.yourItems_.push(Deqipe.wesijah(Cygalusu) as Cygalusu);
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
[/CLASS]
}