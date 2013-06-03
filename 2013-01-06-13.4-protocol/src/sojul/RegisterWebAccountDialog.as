package sojul
{
[CLASS725]   import nonyna.Frame;
   import tinava.Dab;
   import nonyna.Cyb;
   import nonyna.Rutugumen;
   import flash.events.MouseEvent;
   import haqakel.Kefyfa;
   import aaa.Parameters;
   import totuhare.Zufi;
   import kyhawibyc.Fapu;
   import com.company.util.Vutem;


   public class RegisterWebAccountDialog extends Frame
   {
      public function RegisterWebAccountDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.register=new Dab(Fapu);
         this.cancel=new Dab();
         super(Kefyfa.zutylel,Kefyfa.gatid,Kefyfa.rawa,"/kongregateRegisterAccount");
         this.cim();
         this.jygazy();
         this.addEventListeners();
         return;
      }

      public var register:Dab;

      public var cancel:Dab;

      private var dytovu:Cyb;

      private var wyhi:Cyb;

      private var menab:Cyb;

      private var checkbox:Rutugumen;

      private function addEventListeners() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         mycip.addEventListener(MouseEvent.CLICK,this.onCancel);
         mibyruji.addEventListener(MouseEvent.CLICK,this.qare);
         return;
      }

      private function cim() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.dytovu=new Cyb(Kefyfa.syj,false);
         sirutugu(this.dytovu);
         this.wyhi=new Cyb(Kefyfa.rinunuhuw,true);
         sirutugu(this.wyhi);
         this.menab=new Cyb(Kefyfa.mizifydy,true);
         sirutugu(this.menab);
         this.checkbox=new Rutugumen("",false);
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.wuz+"\" target=\"_blank\">";
         var _loc2_:* = "</a></font>.";
         this.checkbox.momiwol(new Zufi().setParams(Kefyfa.qis,
            {
               link:_loc1_,
               _link:_loc2_
            }
         ));
         biryhupot(this.checkbox);
         return;
      }

      private function jygazy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dytovu.tabIndex=1;
         this.wyhi.tabIndex=2;
         this.menab.tabIndex=3;
         this.checkbox.tabIndex=4;
         mycip.tabIndex=5;
         mibyruji.tabIndex=6;
         this.dytovu.tabEnabled=true;
         this.wyhi.tabEnabled=true;
         this.menab.tabEnabled=true;
         this.checkbox.tabEnabled=true;
         mycip.tabEnabled=true;
         mibyruji.tabEnabled=true;
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function qare(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Fapu = null;
         if((this.winuf())&&(this.jycypine())&&(this.mynafezi())&&(this.mymu()))
         {
            _loc2_=new Fapu();
            _loc2_.username=this.dytovu.text();
            _loc2_.password=this.wyhi.text();
            this.register.dispatch(_loc2_);
         }
         return;
      }

      private function mymu() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.checkbox.wys();
         if(!_loc1_)
         {
            this.checkbox.famugujo(Kefyfa.velajyh);
         }
         return _loc1_;
      }

      private function winuf() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = Vutem.hil(this.dytovu.text());
         if(!_loc1_)
         {
            this.dytovu.famugujo(Kefyfa.cudi);
         }
         return _loc1_;
      }

      private function jycypine() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.wyhi.text().length>=5;
         if(!_loc1_)
         {
            this.wyhi.famugujo(Kefyfa.vaj);
         }
         return _loc1_;
      }

      private function mynafezi() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.wyhi.text()==this.menab.text();
         if(!_loc1_)
         {
            this.menab.famugujo(Kefyfa.vipek);
         }
         return _loc1_;
      }

      public function mede(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dytovu.famugujo(param1);
         return;
      }
   }
[/CLASS]
}