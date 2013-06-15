package dymul
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import teticurym.Sewopacyn;
   import vyso.Sehorof;
   import tygole.Govututa;
   import lytu.Dutovoz;
   import lytu.Legu;
   import lytu.Woriqucak;
   import lytu.Lypyruqa;
   import lytu.Taboqid;
   import lytu.Renihi;
   import lytu.Hogi;
   import lytu.Jemafaqo;
   import com.company.assembleegameclient.game.GameSprite;
   import hupad.Nojefeky;
   import hupad.ZombifyDialog;
   import hupad.Liryjic;


   public class Nonur extends Object implements Vupyga
   {
      public function Nonur() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public var pomih:Sewopacyn;

      public var mediatorMap:Sehorof;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Govututa).fezy();
         this.pomih.map(Dutovoz).sakytyf(Legu);
         this.pomih.map(Woriqucak).sakytyf(Lypyruqa);
         this.pomih.map(Taboqid).sakytyf(Renihi);
         this.pomih.map(Hogi).sakytyf(Jemafaqo);
         this.mediatorMap.map(GameSprite).lokiduf(Nojefeky);
         this.mediatorMap.map(ZombifyDialog).lokiduf(Liryjic);
         return;
      }
   }

}