package sefylew
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import zekeqa.Pedug;
   import zekeqa.Devene;
   import flash.events.MouseEvent;
   import komi.Vibemod;
   import aaa.RotmgParameters.RotmgParameters;
   import jediwip.Kybidu;
   import cinyj.Vobewabij;
   import com.company.util.Jyjoburib;


   public class RegisterWebAccountDialog extends Frame
   {
      public function RegisterWebAccountDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.register=new Qanyduk(Vobewabij);
         this.cancel=new Qanyduk();
         super(Vibemod.dosonado,Vibemod.jiririwoj,Vibemod.dodom,"/kongregateRegisterAccount");
         this.tutivyhep();
         this.lakoj();
         this.addEventListeners();
         return;
      }

      public var register:Qanyduk;

      public var cancel:Qanyduk;

      private var sese:Pedug;

      private var cojy:Pedug;

      private var vyfodav:Pedug;

      private var checkbox:Devene;

      private function addEventListeners() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         vuz.addEventListener(MouseEvent.CLICK,this.onCancel);
         nuwido.addEventListener(MouseEvent.CLICK,this.mijy);
         return;
      }

      private function tutivyhep() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.sese=new Pedug(Vibemod.wiqipujep,false);
         gozunigyl(this.sese);
         this.cojy=new Pedug(Vibemod.ryzen,true);
         gozunigyl(this.cojy);
         this.vyfodav=new Pedug(Vibemod.mogekyn,true);
         gozunigyl(this.vyfodav);
         this.checkbox=new Devene("",false);
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+RotmgParameters.dyda+"\" target=\"_blank\">";
         var _loc2_:* = "</a></font>.";
         this.checkbox.qataqybyp(new Kybidu().setParams(Vibemod.ricokem,
            {
               link:_loc1_,
               _link:_loc2_
            }
         ));
         nemutyzyv(this.checkbox);
         return;
      }

      private function lakoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sese.tabIndex=1;
         this.cojy.tabIndex=2;
         this.vyfodav.tabIndex=3;
         this.checkbox.tabIndex=4;
         vuz.tabIndex=5;
         nuwido.tabIndex=6;
         this.sese.tabEnabled=true;
         this.cojy.tabEnabled=true;
         this.vyfodav.tabEnabled=true;
         this.checkbox.tabEnabled=true;
         vuz.tabEnabled=true;
         nuwido.tabEnabled=true;
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function mijy(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vobewabij = null;
         if((this.lanuqe())&&(this.rojosa())&&(this.raroqyz())&&(this.qusylyce()))
         {
            _loc2_=new Vobewabij();
            _loc2_.username=this.sese.text();
            _loc2_.password=this.cojy.text();
            this.register.dispatch(_loc2_);
         }
         return;
      }

      private function qusylyce() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.checkbox.lywyfiro();
         if(!_loc1_)
         {
            this.checkbox.nirin(Vibemod.lyqon);
         }
         return _loc1_;
      }

      private function lanuqe() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = Jyjoburib.mag(this.sese.text());
         if(!_loc1_)
         {
            this.sese.nirin(Vibemod.wogijepew);
         }
         return _loc1_;
      }

      private function rojosa() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.cojy.text().length>=5;
         if(!_loc1_)
         {
            this.cojy.nirin(Vibemod.butos);
         }
         return _loc1_;
      }

      private function raroqyz() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.cojy.text()==this.vyfodav.text();
         if(!_loc1_)
         {
            this.vyfodav.nirin(Vibemod.pupoqyhi);
         }
         return _loc1_;
      }

      public function cedocy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sese.nirin(param1);
         return;
      }
   }

}