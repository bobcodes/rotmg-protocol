package fapas
{
   import komawowag.Kaquhen;
   import komawowag.Net;
   import kyco.Nun;
   import komawowag.Becepog;
   import flash.display.DisplayObjectContainer;
   import sojycav.ModularContextEvent;
   import valatom.Bobibu;
   import sojycav.Fugyh;
   import sojycav.Zodyz;
   import jebaraqeq.Fivyjysej;


   public class Bazeso extends Object implements Kaquhen
   {
      public function Bazeso(param1:Boolean=true, param2:Boolean=true) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.pitogidim=param1;
         this.nigusut=param2;
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Bazeso);

      private var kavev:Net;

      private var pub:Nun;

      private var hycekuj:Becepog;

      private var pitogidim:Boolean;

      private var nigusut:Boolean;

      public function extend(param1:Net) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kavev=param1;
         this.pub=param1.cemohoqal;
         this.hycekuj=param1.peroq(this);
         this.kavev.fyf.fymer(this.fymer);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function fymer() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      private function zufifoj() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         if(this.pub.lob(DisplayObjectContainer))
         {
            this.hycekuj.debug("Context configured to inherit. Broadcasting existence event...");
            _loc1_=this.pub.getInstance(DisplayObjectContainer);
            _loc1_.dispatchEvent(new ModularContextEvent(ModularContextEvent.qohoqace,this.kavev));
         }
         else
         {
            this.hycekuj.mywid("Context has been configured to inherit dependencies but has no way to do so");
         }
         return;
      }

      private function vikulerab() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Bobibu = null;
         var _loc2_:DisplayObjectContainer = null;
         if(this.pub.lob(Bobibu))
         {
            this.hycekuj.debug("Context has a ViewManager. Configuring view manager based context existence watcher...");
            _loc1_=this.pub.getInstance(Bobibu);
         }
         else
         {
            if(this.pub.lob(DisplayObjectContainer))
            {
               this.hycekuj.debug("Context has a ContextView. Configuring context view based context existence watcher...");
               _loc2_=this.pub.getInstance(DisplayObjectContainer);
            }
            else
            {
               this.hycekuj.mywid("Context has been configured to expose its dependencies but has no way to do so");
            }
         }
         return;
      }
   }

}