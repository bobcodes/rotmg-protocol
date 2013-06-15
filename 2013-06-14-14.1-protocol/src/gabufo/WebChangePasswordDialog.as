package gabufo
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import zekeqa.Pedug;
   import flash.events.MouseEvent;
   import cinyj.Fycokyrub;
   import komi.Vibemod;
   import qykifavol.Rulavowaz;


   public class WebChangePasswordDialog extends Frame
   {
      public function WebChangePasswordDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(Vibemod.qulo,Vibemod.cisinidut,Vibemod.jucopera,"/changePassword");
         this.password_=new Pedug(Vibemod.fupulez,true);
         gozunigyl(this.password_);
         this.jivutere=new Pedug(Vibemod.limoqog,true);
         gozunigyl(this.jivutere);
         this.sez=new Pedug(Vibemod.gogypade,true);
         gozunigyl(this.sez);
         this.cancel=new Rulavowaz(vuz,MouseEvent.CLICK);
         this.change=new Rulavowaz(nuwido,MouseEvent.CLICK);
         return;
      }

      public var cancel:Qanyduk;

      public var change:Qanyduk;

      public var password_:Pedug;

      public var jivutere:Pedug;

      public var sez:Pedug;

      private function fuvare(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Fycokyrub = null;
         if((this.vihetip())&&(this.sopavuset())&&(this.dohamice()))
         {
            disable();
            _loc2_=new Fycokyrub();
            _loc2_.wote=this.password_.text();
            _loc2_.newPassword=this.jivutere.text();
            this.change.dispatch(_loc2_);
         }
         return;
      }

      private function vihetip() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.password_.text().length>=5;
         if(!_loc1_)
         {
            this.password_.nirin(Vibemod.gifuz);
         }
         return _loc1_;
      }

      private function sopavuset() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.jivutere.text().length>=5;
         if(!_loc1_)
         {
            this.jivutere.nirin(Vibemod.jum);
         }
         return _loc1_;
      }

      private function dohamice() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.jivutere.text()==this.sez.text();
         if(!_loc1_)
         {
            this.sez.nirin(Vibemod.rabo);
         }
         return _loc1_;
      }

      public function nirin(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.password_.nirin(param1);
         return;
      }
   }

}