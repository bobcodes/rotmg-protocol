package aaa.rotmg.ui
{
   import __AS3__.vec.Vector;
   import aaa.rotmg.net.Server;


   public interface ServersContainer
   {
      function setServers(param1:Vector.<Server>) : void;

      function getBestServer() : Server;

      function hasServers() : Boolean;

      function getServers() : Vector.<Server>;
   }

}