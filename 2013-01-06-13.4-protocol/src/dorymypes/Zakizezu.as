package dorymypes
{
[CLASS91]   import syfuqycy.Gyz;
   import koqeko.Vona;
   import koqeko.Kevut;
   import kirofyny.Hehuf;
   import qiwyz.Bozakehy;
   import cejyva.ErrorDialog;


   public class Zakizezu extends Gyz
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zakizezu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const LANGUAGE:String = "LANGUAGE";

      public var model:Vona;

      public var sufol:Kevut;

      public var lyhog:Hehuf;

      public var client:Bozakehy;

      private var language:String;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.language=this.model.tovide();
         this.client.complete.addOnce(this.onComplete);
         this.client.casegyma(3);
         this.client.sendRequest("/app/getLanguageStrings",{languageType:this.language});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.dunop(param2);
         }
         else
         {
            this.kybageto();
         }
         pylebodyq(param1,param2);
         return;
      }

      private function dunop(param1:String) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Array = null;
         this.sufol.clear();
         var _loc2_:Object = JSON.parse(param1);
         for each (_loc3_ in _loc2_)
         {
            this.sufol.setValue(_loc3_[0],_loc3_[1],_loc3_[2]);
         }
         return;
      }

      private function kybageto() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sufol.setValue("ok","ok",this.model.tovide());
         var _loc1_:ErrorDialog = new ErrorDialog("Unable to load language ["+this.language+"]");
         this.lyhog.dispatch(_loc1_);
         pylebodyq(false);
         return;
      }
   }
[/CLASS]
}