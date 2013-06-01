package tidi
{
[CLASS464]   import tysenyzy.Zovisis;
   import leselo.Account;
   import vofepimy.Vofulofin;
   import kirofyny.Tiqimav;
   import rysuho.Loku;


   public class Cobose extends Zovisis
   {
      public function Cobose() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var mepuwyb:Vofulofin;

      public var view:Vujiru;

      public var closeDialogs:Tiqimav;

      public var vume:Loku;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mepuwyb.start();
         this.view.wynare.add(this.pyl);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.wynare.remove(this.pyl);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      public function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }

      public function pyl() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vume.dispatch();
         return;
      }
   }
[/CLASS]
}