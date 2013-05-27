package ruwysepyd
{
   import qov.Kalefu;
   import nafa.Vahoz;
   import hotewa.Baqifa;
   import aaa.rotmg.ui.ServersContainer;


   public class Vosurypy extends Kalefu
   {
      public function Vosurypy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Vahoz;

      public var model:Baqifa;

      public var servers:ServersContainer;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.initialize(this.model,this.servers.getBestServer());
         return;
      }
   }

}