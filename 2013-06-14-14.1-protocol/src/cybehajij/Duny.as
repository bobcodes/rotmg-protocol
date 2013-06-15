package cybehajij
{
   import gycu.Siv;
   import vilova.Wyt;
   import pomujukir.Cuqoseze;
   import gokyc.Rud;
   import suzen.Kodufanin;


   public class Duny extends Siv implements Wyt
   {
      public function Duny() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var email:String;

      public var taja:Cuqoseze;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/forgotPassword",{guid:this.email});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS4]_loc4_:* = [/OFS]true;
         if([OFS8]param1[/OFS])
         {
            this.[OFS14]lidunuh[/OFS][OFS14]([/OFS][OFS14])[/OFS];
         }
         else
         {
            this.[OFS24]zotaky[/OFS][OFS24]([/OFS][OFS23]param2[/OFS][OFS24])[/OFS];
         }
         [OFS28]return[/OFS];
      }

      private function lidunuh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nypawa();
         dom(true);
         return;
      }

      private function nypawa() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="passwordSent";
         this.taja.dispatch(_loc1_);
         return;
      }

      private function zotaky(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dom(false,param1);
         return;
      }
   }

}