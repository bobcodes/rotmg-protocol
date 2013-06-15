package fihur
{
   import flash.utils.Dictionary;
   import jediwip.AppendingLineBuilder;


   public class Qudicy extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qudicy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      static const nulotuf:uint = 65280;

      static const gekeziji:uint = 16711680;

      static const tejy:uint = 16777103;

      static const quvesahen:uint = 11776947;

      static const pepovut:uint = 9055202;

      public var lor:Dictionary;

      public var zyh:AppendingLineBuilder;

      public var bycavima:AppendingLineBuilder;

      public function sokaqobod(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vicylasa();
         this.compareSlots(param1,param2);
         return;
      }

      protected function compareSlots(param1:XML, param2:XML) : void {
         return;
      }

      private function vicylasa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lor=new Dictionary();
         this.zyh=new AppendingLineBuilder();
         return;
      }

      protected function musybiboj(param1:Number) : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<0)
         {
            return gekeziji;
         }
         if(param1>0)
         {
            return nulotuf;
         }
         return tejy;
      }

      protected function wafifib(param1:String, param2:uint=16777103) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return "<font color=\"#"+param2.toString(16)+"\">"+param1+"</font>";
      }

      protected function wotywu(param1:String) : String {
         return this.wafifib("MP Cost: ",quvesahen)+this.wafifib(param1,tejy)+"\n";
      }
   }

}