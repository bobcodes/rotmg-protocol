package niqe
{
   import gycu.Siv;
   import cycuka.Voli;
   import cycuka.Sinaf;
   import cizagamym.Boquzojul;
   import gokyc.Rud;
   import vysob.ErrorDialog;


   public class Nuder extends Siv
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nuder() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const LANGUAGE:String = "LANGUAGE";

      public var model:Voli;

      public var rizidawu:Sinaf;

      public var ridecy:Boquzojul;

      public var client:Rud;

      private var language:String;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.language=this.model.ropyra();
         this.client.complete.addOnce(this.onComplete);
         this.client.kesanij(3);
         this.client.sendRequest("/app/getLanguageStrings",{languageType:this.language});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.lebyha(param2);
         }
         else
         {
            this.ketazi();
         }
         dom(param1,param2);
         return;
      }

      private function lebyha(param1:String) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Array = null;
         this.rizidawu.clear();
         var _loc2_:Object = JSON.parse(param1);
         for each (_loc3_ in _loc2_)
         {
            this.rizidawu.setValue(_loc3_[0],_loc3_[1],_loc3_[2]);
         }
         return;
      }

      private function ketazi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rizidawu.setValue("ok","ok",this.model.ropyra());
         var _loc1_:ErrorDialog = new ErrorDialog("Unable to load language ["+this.language+"]");
         this.ridecy.dispatch(_loc1_);
         dom(false);
         return;
      }
   }

}