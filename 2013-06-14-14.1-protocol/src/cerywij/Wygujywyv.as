package cerywij
{
   import tytojonib.Kyjefe;
   import micac.Ciqyl;
   import micac.Josuba;
   import pusy.Mun;
   import pusy.Luh;
   import jyhyzujyw.Bagebok;
   import kabam.rotmg.assets.services.Zog;
   import wenono.Pirocuvir;
   import fanij.Namejaja;
   import com.company.assembleegameclient.objects.Player;
   import haj.Jipehop;


   public class Wygujywyv extends Kyjefe
   {
      public function Wygujywyv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Qedicudo;

      public var fer:Ciqyl;

      public var pyrikaky:Josuba;

      public var hibufuryn:Mun;

      public var ropilu:Luh;

      public var bapype:Bagebok;

      public var quz:Zog;

      public var repevony:Far;

      public var guk:Pirocuvir;

      public var mifyryg:Mupawij;

      public var buguzunag:Namejaja;

      private var gyta:Boolean = true;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gycyfyw.add(this.wudiravuw);
         this.hibufuryn.addOnce(this.duqada);
         this.repevony.add(this.hysofed);
         this.guk.add(this.horizike);
         this.mifyryg.add(this.vyp);
         this.bapype.add(this.puhujoryw);
         return;
      }

      private function hysofed(param1:Hekogesa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gyta=false;
         this.cuny();
         this.duqada(this.fer.qyhowo.map.player_);
         return;
      }

      private function horizike() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gyta=true;
         this.cuny();
         this.duqada(this.fer.qyhowo.map.player_);
         this.view.ned(1);
         return;
      }

      private function vyp() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.view.cidufyjoh+1;
         _loc1_=_loc1_%this.view.nidawybi.length;
         this.view.ned(_loc1_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gycyfyw.remove(this.wudiravuw);
         this.ropilu.remove(this.pavuriky);
         return;
      }

      private function duqada(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!param1)
         {
            return;
         }
         this.view.tazil(this.quz.pap(Kog.fig),new Juvujyvin(param1));
         if(this.gyta)
         {
            this.view.tazil(this.quz.pap(Kog.kygy),new Badalew(this.view.HEIGHT));
         }
         if(param1.mugure)
         {
            this.view.tazil(this.quz.pap(Kog.lugu),new Kytanymeh(param1));
         }
         else
         {
            this.ropilu.add(this.pavuriky);
         }
         if(this.buguzunag.tigosulo())
         {
            this.view.tazil(this.quz.pap(Kog.vikilezal),new Jipehop());
         }
         return;
      }

      private function cuny() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cuny();
         return;
      }

      private function wudiravuw(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyrikaky.kina=param1;
         return;
      }

      private function pavuriky(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Player = null;
         if(param1)
         {
            _loc2_=this.fer.qyhowo.map.player_;
            this.view.tazil(this.quz.pap(Kog.lugu),new Kytanymeh(_loc2_));
            this.ropilu.remove(this.pavuriky);
         }
         return;
      }

      private function puhujoryw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cuny();
         this.duqada(this.fer.qyhowo.map.player_);
         return;
      }
   }

}