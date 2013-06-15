package tisidon
{
   import tytojonib.Kyjefe;
   import fodopud.Gebohuk;
   import mebug.Fav;
   import nagyc.Jyt;
   import flash.net.URLRequest;
   import nagyc.Guzakis;
   import flash.net.navigateToURL;


   public class Ribomav extends Kyjefe
   {
      public function Ribomav() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Cowanynow;

      public var byfybuvu:Gebohuk;

      public var nuqytide:Fav;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.letojeg.add(this.wakujo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.letojeg.remove(this.wakujo);
         return;
      }

      private function wakujo(param1:Jyt) : void {
         var [OFS2]_loc4_:* = [/OFS]true;
         var [OFS4]_loc5_:* = [/OFS]false;
         var [OFS12]_loc2_:URLRequest = [/OFS][OFS8]null[/OFS];
         switch(null)
         {
            case [OFS18]Guzakis[/OFS].[OFS21]zicop[/OFS]:
               [OFS44]_loc2_=[/OFS][OFS37]new [/OFS][OFS37]URLRequest[/OFS][OFS37]([/OFS][OFS33]param1[/OFS].[OFS34]linkDetail[/OFS][OFS37])[/OFS];
               [OFS52]navigateToURL[/OFS][OFS52]([/OFS][OFS48]_loc2_[/OFS][OFS52],[/OFS][OFS49]"_blank"[/OFS][OFS52])[/OFS];
               break;
            case [OFS112]Guzakis[/OFS].[OFS115]refiz[/OFS]:
               this.[OFS62]byfybuvu[/OFS].[OFS74]dispatch[/OFS][OFS74]([/OFS][OFS71]int[/OFS][OFS71]([/OFS][OFS67]param1[/OFS].[OFS68]linkDetail[/OFS][OFS71])[/OFS][OFS74])[/OFS];
               break;
            case [OFS129]Guzakis[/OFS].[OFS132]wacy[/OFS]:
               this.[OFS83]nuqytide[/OFS].[OFS90]dispatch[/OFS][OFS90]([/OFS][OFS86]param1[/OFS].[OFS87]linkDetail[/OFS][OFS90])[/OFS];
               break;
         }
         [OFS167]return[/OFS];
      }
   }

}