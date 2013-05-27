package zanotyv
{
   import gag.Fijarih;
   import byzany.Qopel;
   import byzany.Nagumy;
   import wegyluke.Hez;
   import aaa.rotmg.net.HttpClientWrapper;
   import nas.ErrorDialog;


   public class Tucaduqip extends Fijarih
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tucaduqip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const LANGUAGE:String = "LANGUAGE";

      public var model:Qopel;

      public var wigaleqa:Nagumy;

      public var naval:Hez;

      public var client:HttpClientWrapper;

      private var language:String;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.language=this.model.hymaceli();
         this.client.complete.addOnce(this.onComplete);
         this.client.fug(3);
         this.client.sendRequest("/app/getLanguageStrings",{languageType:this.language});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.nivy(param2);
         }
         else
         {
            this.gov();
         }
         syjavimu(param1,param2);
         return;
      }

      private function nivy(param1:String) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Array = null;
         this.wigaleqa.clear();
         var _loc2_:Object = JSON.parse(param1);
         for each (_loc3_ in _loc2_)
         {
            this.wigaleqa.setValue(_loc3_[0],_loc3_[1],_loc3_[2]);
         }
         return;
      }

      private function gov() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wigaleqa.setValue("ok","ok",this.model.hymaceli());
         var _loc1_:ErrorDialog = new ErrorDialog("Unable to load language ["+this.language+"]");
         this.naval.dispatch(_loc1_);
         syjavimu(false);
         return;
      }
   }

}