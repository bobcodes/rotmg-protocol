package fyled
{
[CLASS558]   import bikyvym.Tihoc;
   import bikyvym.Cedymynet;
   import pogefeqeh.Wahovy;
   import zajenevik.Tif;
   import wufyba.Cobyjowek;
   import tiqydad.Fevirofow;
   import tiqydad.Wedyqi;
   import tiqydad.Garuzup;
   import com.company.assembleegameclient.game.GameSprite;
   import vipyjasar.Qojotecim;
   import tinava.Dab;


   public class Fygi extends Object implements Tihoc
   {
      public function Fygi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Cedymynet;

      public var viqelo:Wahovy;

      public var pyv:Tif;

      public var mediatorMap:Cobyjowek;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqelo.map(Fevirofow).fajuna();
         this.pyv.map(Wedyqi).paradi(Garuzup);
         this.mediatorMap.map(GameSprite).sab(Qojotecim);
         this.context.sutu.kan(this.init);
         return;
      }

      private function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Dab(this.viqelo.getInstance(Wedyqi)).dispatch();
         return;
      }
   }
[/CLASS]
}