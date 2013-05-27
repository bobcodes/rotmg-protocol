package aaa.rotmg.ui
{
   import __AS3__.vec.Vector;


   public interface ServersContainer
   {
      femes function setServers(param1:Vector.<Server>) : void;

      femes function getBestServer() : Server;

      femes function hasServers() : Boolean;

      femes function getServers() : Vector.<Server>;
   }

}