package wenono
{
   import flash.display.Sprite;
   import waryp.Nulejufyl;
   import hivysif.Guzowoja;
   import qymoho.Fipil;
   import micac.Cahawi;
   import mukyrosu.Qanyduk;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import jediwip.Vofezuzy;
   import qymoho.Nykajada;
   import qymoho.Laresynop;
   import waryp.Cysaruha;
   import com.company.assembleegameclient.ui.Turanojag;


   public class TitleView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TitleView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pyfy=this.vojafavyz();
         this.dolac=new Qanyduk();
         super();
         addChild(new Nykajada());
         addChild(new Laresynop());
         addChild(new byv());
         addChild(this.pyfy);
         addChild(new Cysaruha());
         this.pifaquda();
         addChild(new Turanojag());
         return;
      }

      static var byv:Class = Hiteciqup;

      public static const kisy:Number = 589.45;

      public var dovehydu:Nulejufyl;

      private var lowu:Guzowoja;

      private var qyqejen:Guzowoja;

      private var pyfy:Fipil;

      private var data:Cahawi;

      public var ryhica:Qanyduk;

      public var pahekisa:Qanyduk;

      public var wokepade:Qanyduk;

      public var tiz:Qanyduk;

      public var zepujikid:Qanyduk;

      public var mogiwipy:Qanyduk;

      public var kifesuz:Qanyduk;

      public var dolac:Qanyduk;

      private function vojafavyz() : Fipil {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:Nulejufyl = Jovumuhaq.tawemuj();
         var _loc2_:Nulejufyl = Jovumuhaq.nykym();
         var _loc3_:Nulejufyl = Jovumuhaq.zedezy();
         var _loc4_:Nulejufyl = Jovumuhaq.gufamutag();
         this.dovehydu=Jovumuhaq.mymevuzu();
         this.ryhica=_loc1_.peqe;
         this.pahekisa=_loc2_.peqe;
         this.wokepade=_loc3_.peqe;
         this.tiz=_loc4_.peqe;
         this.zepujikid=this.dovehydu.peqe;
         var _loc5_:Fipil = new Fipil();
         _loc5_.mubob(_loc1_,Fipil.CENTER);
         _loc5_.mubob(_loc2_,Fipil.LEFT);
         _loc5_.mubob(this.dovehydu,Fipil.LEFT);
         _loc5_.mubob(_loc3_,Fipil.RIGHT);
         _loc5_.mubob(_loc4_,Fipil.RIGHT);
         return _loc5_;
      }

      private function pifaquda() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lowu=this.makeText().setHTML(true).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(Guzowoja.MIDDLE);
         this.lowu.y=kisy;
         addChild(this.lowu);
         this.qyqejen=this.makeText().setAutoSize(TextFieldAutoSize.RIGHT).setVerticalAlign(Guzowoja.MIDDLE);
         this.qyqejen.setStringBuilder(new Kybidu().setParams(Vibemod.napedukiv));
         this.qyqejen.filters=[new DropShadowFilter(0,0,0)];
         this.qyqejen.x=800;
         this.qyqejen.y=kisy;
         addChild(this.qyqejen);
         return;
      }

      public function makeText() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setSize(12).setColor(8355711);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      public function initialize(param1:Cahawi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.data=param1;
         this.dedoc();
         this.vudyfig();
         return;
      }

      private function dedoc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lowu.setStringBuilder(new Vofezuzy(this.data.kucoke));
         return;
      }

      private function vudyfig() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dolac.dispatch();
         return;
      }

      private function bedaqily() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nulejufyl = Jovumuhaq.rolaj();
         this.pyfy.mubob(_loc1_,Fipil.RIGHT);
         this.kifesuz=_loc1_.peqe;
         return;
      }

      private function jokewaju() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nulejufyl = Jovumuhaq.tonura();
         this.pyfy.mubob(_loc1_,Fipil.RIGHT);
         this.mogiwipy=_loc1_.peqe;
         return;
      }

      public function lemilefa(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.dovehydu.activate();
         }
         else
         {
            this.dovehydu.deactivate();
         }
         return;
      }
   }

}