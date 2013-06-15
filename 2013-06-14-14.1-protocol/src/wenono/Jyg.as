package wenono
{
   import tytojonib.Kyjefe;
   import micac.Ciqyl;
   import pusy.Riquzesi;
   import pusy.Mun;
   import pusy.Lyfezy;
   import sydo.Zib;
   import com.company.assembleegameclient.objects.Bijelywa;
   import pumoc.Gigo;
   import com.company.googleanalytics.GA;
   import aaa.RotmgParameters.RotmgParameters;
   import loradaby.Options;
   import com.company.assembleegameclient.objects.Player;


   public class Jyg extends Kyjefe
   {
      public function Jyg() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CharacterDetailsView;

      public var fer:Ciqyl;

      public var remazi:Riquzesi;

      public var hibufuryn:Mun;

      public var foryc:Lyfezy;

      public var ciciviqod:Zib;

      public var cubalacac:Bijelywa;

      public var gagapas:Gigo;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.defo();
         this.view.init(this.fer.lusikur(),this.fer.rykowibi());
         this.hibufuryn.addOnce(this.wyseg);
         this.hibufuryn.add(this.capipucu);
         this.foryc.add(this.papete);
         this.view.kegov.add(this.monukomik);
         this.view.fezu.add(this.neduvyr);
         return;
      }

      private function defo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.ciciviqod=this.ciciviqod;
         this.view.cubalacac=this.cubalacac;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibufuryn.remove(this.capipucu);
         this.foryc.remove(this.papete);
         this.view.kegov.remove(this.monukomik);
         this.view.fezu.remove(this.neduvyr);
         return;
      }

      private function monukomik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gagapas.halyviken();
         this.fer.qyhowo.gsc_.escape();
         GA.global().trackEvent("enterPortal","Nexus Button");
         RotmgParameters.data_.needsRandomRealm=false;
         RotmgParameters.save();
         return;
      }

      private function neduvyr() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fer.qyhowo.mui_.clearInput();
         GA.global().trackEvent("options","Options Button");
         this.fer.qyhowo.addChild(new Options(this.fer.qyhowo));
         return;
      }

      private function wyseg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }

      private function capipucu(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw(param1);
         return;
      }

      private function papete(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setName(param1);
         return;
      }
   }

}