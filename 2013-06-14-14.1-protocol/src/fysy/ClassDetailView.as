package fysy
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import bemav.Tagoze;
   import kabam.rotmg.assets.model.Animation;
   import wenono.Nuri;
   import jediwip.Kybidu;
   import jediwip.Vofezuzy;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import kabam.rotmg.assets.services.Zog;


   public class ClassDetailView extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ClassDetailView() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DropShadowFilter = null;
         super();
         this.ryfoc.complete.add(this.layout);
         _loc1_=new DropShadowFilter(0,0,0,1,8,8);
         this.pyfur=new Sprite();
         this.pyfur.x=(WIDTH-104)*0.5;
         addChild(this.pyfur);
         this.classNameText=new Guzowoja().setSize(20).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(qeqo);
         this.classNameText.filters=[_loc1_];
         this.ryfoc.push(this.classNameText.textChanged);
         addChild(this.classNameText);
         this.sihynad=new Guzowoja().setSize(14).setColor(16777215).setTextWidth(qeqo).setWordWrap(true);
         this.sihynad.filters=[_loc1_];
         this.ryfoc.push(this.sihynad.textChanged);
         addChild(this.sihynad);
         this.lyjysuv=new Guzowoja().setSize(14).setColor(16777215).setBold(true);
         this.lyjysuv.filters=[_loc1_];
         this.lyjysuv.setStringBuilder(new Kybidu().setParams(Vibemod.qetofymiv));
         this.ryfoc.push(this.lyjysuv.textChanged);
         addChild(this.lyjysuv);
         this.vuhis=new Guzowoja().setSize(14).setColor(16777215).setBold(true);
         this.vuhis.filters=[_loc1_];
         this.vuhis.setStringBuilder(new Kybidu().setParams(Vibemod.wove));
         this.ryfoc.push(this.vuhis.textChanged);
         addChild(this.vuhis);
         this.dawuw=new Guzowoja().setSize(16).setColor(16777215).setBold(true);
         this.dawuw.filters=[_loc1_];
         this.ryfoc.push(this.dawuw.textChanged);
         addChild(this.dawuw);
         this.sedode=new Guzowoja().setSize(14).setColor(16777215).setBold(true);
         this.sedode.filters=[_loc1_];
         this.sedode.setStringBuilder(new Kybidu().setParams(Vibemod.pyqoheh));
         this.ryfoc.push(this.sedode.textChanged);
         addChild(this.sedode);
         this.lygugede=new Guzowoja().setSize(16).setColor(15387756).setBold(true);
         this.lygugede.filters=[_loc1_];
         this.ryfoc.push(this.lygugede.textChanged);
         addChild(this.lygugede);
         this.sotu=new Bitmap(Zog.rycyges());
         this.sotu.filters=[_loc1_];
         addChild(this.sotu);
         this.zyca=new Guzowoja().setSize(14).setColor(16777215).setBold(true);
         this.zyca.filters=[_loc1_];
         this.zyca.setStringBuilder(new Kybidu().setParams(Vibemod.refuhufe));
         this.zyca.visible=false;
         addChild(this.zyca);
         this.wufiho=new Guzowoja().setSize(14).setColor(16777215);
         this.wufiho.filters=[_loc1_];
         this.wufiho.visible=false;
         addChild(this.wufiho);
         this.kibafow=new Tagoze();
         addChild(this.kibafow);
         return;
      }

      private static const toqysyj:int = 205;

      private static const WIDTH:int = 344;

      private static const qeqo:int = 188;

      private var classNameText:Guzowoja;

      private var sihynad:Guzowoja;

      private var lyjysuv:Guzowoja;

      private var vuhis:Guzowoja;

      private var dawuw:Guzowoja;

      private var sedode:Guzowoja;

      private var lygugede:Guzowoja;

      private var sotu:Bitmap;

      private var zyca:Guzowoja;

      private var wufiho:Guzowoja;

      private var kibafow:Tagoze;

      private var cife:Boolean;

      private var pyfur:Sprite;

      private var kicuz:Animation;

      private const ryfoc:Nuri = new Nuri();

      public function raqy(param1:String, param2:String, param3:int, param4:int, param5:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.classNameText.setStringBuilder(new Kybidu().setParams(param1));
         this.sihynad.setStringBuilder(new Kybidu().setParams(param2));
         this.dawuw.setStringBuilder(new Vofezuzy(String(param4)));
         this.lygugede.setStringBuilder(new Vofezuzy(String(param5)));
         return;
      }

      public function vutyja(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.cife=!(param2==-1);
         if(this.cife)
         {
            this.wufiho.setStringBuilder(new Kybidu().setParams(Vibemod.mynuq,
               {
                  goal:String(param2),
                  quest:param1
               }
            ));
            this.wufiho.y=this.zyca.y+this.zyca.height;
            this.wufiho.x=WIDTH/2-this.wufiho.width/2;
            this.ryfoc.push(this.wufiho.textChanged);
            this.ryfoc.push(this.zyca.textChanged);
         }
         return;
      }

      public function qecuhicyq(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kicuz=param1;
         this.layout();
         return;
      }

      private function bohawet(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stop();
         this.pyfur.removeChild(param1);
         return;
      }

      private function zawebawy(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyfur.addChild(param1);
         param1.start();
         return;
      }

      private function layout() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.classNameText.x=WIDTH/2-this.classNameText.width/2;
         this.classNameText.y=110;
         this.sihynad.y=this.classNameText.y+this.classNameText.height+5;
         this.sihynad.x=WIDTH/2-this.sihynad.width/2;
         this.lyjysuv.y=this.sihynad.y+this.sihynad.height+20;
         this.lyjysuv.x=toqysyj-this.lyjysuv.width;
         this.kibafow.y=this.lyjysuv.y-2;
         this.kibafow.x=toqysyj+18;
         this.vuhis.y=this.lyjysuv.y+this.lyjysuv.height+5;
         this.vuhis.x=toqysyj-this.vuhis.width;
         this.dawuw.y=this.vuhis.y;
         this.dawuw.x=toqysyj+18;
         this.sedode.y=this.vuhis.y+this.vuhis.height+5;
         this.sedode.x=toqysyj-this.sedode.width;
         this.lygugede.y=this.sedode.y;
         this.lygugede.x=toqysyj+18;
         this.sotu.y=this.sedode.y-2;
         this.sotu.x=this.lygugede.x+this.lygugede.width+3;
         this.zyca.y=this.sedode.y+this.sedode.height+17;
         this.zyca.x=WIDTH/2-this.zyca.width/2;
         this.zyca.visible=this.cife;
         this.wufiho.y=this.zyca.y+this.zyca.height;
         this.wufiho.x=WIDTH/2-this.wufiho.width/2;
         this.wufiho.visible=this.cife;
         return;
      }
   }

}