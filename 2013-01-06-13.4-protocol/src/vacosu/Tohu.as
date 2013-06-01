package vacosu
{
[CLASS1804]   import flash.utils.Dictionary;
   import totuhare.AppendingLineBuilder;


   public class Tohu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tohu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      static const jujuhiq:uint = 65280;

      static const hup:uint = 16711680;

      static const fyje:uint = 16777103;

      static const gujypyg:uint = 11776947;

      static const bujypude:uint = 9055202;

      public var vase:Dictionary;

      public var pafacihuh:AppendingLineBuilder;

      public var lupizavyc:AppendingLineBuilder;

      public function zedonog(param1:XML, param2:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.cydoruh();
         this.compareSlots(param1,param2);
         return;
      }

      protected function compareSlots(param1:XML, param2:XML) : void {
         return;
      }

      private function cydoruh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vase=new Dictionary();
         this.pafacihuh=new AppendingLineBuilder();
         return;
      }

      protected function conehody(param1:Number) : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<0)
         {
            return hup;
         }
         if(param1>0)
         {
            return jujuhiq;
         }
         return fyje;
      }

      protected function vajaco(param1:String, param2:uint=16777103) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return "<font color=\"#"+param2.toString(16)+"\">"+param1+"</font>";
      }

      protected function genohuvy(param1:String) : String {
         return this.vajaco("MP Cost: ",gujypyg)+this.vajaco(param1,fyje)+"\n";
      }
   }
[/CLASS]
}