package gabufo
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Hiry;
   import jediwip.Vofezuzy;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import qykifavol.Rulavowaz;


   public class WebAccountDetailDialog extends Frame
   {
      public function WebAccountDetailDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super("WebAccountDetailDialog.title","","WebAccountDetailDialog.rightButton","/currentLogin");
         this.kopec();
         this.pehivobys();
         h_=h_+88;
         this.cancel=new Rulavowaz(nuwido,MouseEvent.CLICK);
         this.change=new Qanyduk();
         this.logout=new Qanyduk();
         this.verify=new Qanyduk();
         return;
      }

      public var cancel:Qanyduk;

      public var change:Qanyduk;

      public var logout:Qanyduk;

      public var verify:Qanyduk;

      private var loginText:Guzowoja;

      private var manegejos:Guzowoja;

      private var coligep:Hiry;

      private var vijuho:Hiry;

      private var rulenyk:Hiry;

      public function fefag(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.manegejos.setStringBuilder(new Vofezuzy(param1));
         if(!param2)
         {
            this.burecabec();
         }
         this.myvuqiz();
         this.fiho();
         return;
      }

      private function burecabec() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.coligep=new Hiry(12,false,"WebAccountDetailDialog.verify");
         pivol(this.coligep);
         this.coligep.addEventListener(MouseEvent.CLICK,this.bymejeqeg);
         return;
      }

      private function myvuqiz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vijuho=new Hiry(12,false,"WebAccountDetailDialog.changePassword");
         this.vijuho.addEventListener(MouseEvent.CLICK,this.fuvare);
         pivol(this.vijuho);
         return;
      }

      private function fuvare(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.change.dispatch();
         return;
      }

      private function fiho() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rulenyk=new Hiry(12,false,"WebAccountDetailDialog.logout");
         this.rulenyk.addEventListener(MouseEvent.CLICK,this.gucug);
         pivol(this.rulenyk);
         return;
      }

      private function gucug(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.logout.dispatch();
         return;
      }

      private function kopec() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         this.loginText=new Guzowoja().setSize(18).setColor(11776947);
         this.loginText.setBold(true);
         this.loginText.setStringBuilder(new Kybidu().setParams("WebAccountDetailDialog.loginText"));
         this.loginText.filters=[new DropShadowFilter(0,0,0)];
         this.loginText.y=h_-60;
         this.loginText.x=17;
         addChild(this.loginText);
         return;
      }

      private function pehivobys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.manegejos=new Guzowoja().setSize(16).setColor(11776947);
         this.manegejos.y=h_-30;
         this.manegejos.x=17;
         addChild(this.manegejos);
         return;
      }

      private function bymejeqeg(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.verify.dispatch();
         this.coligep.pufonuh("WebAccountDetailDialog.sent");
         return;
      }
   }

}