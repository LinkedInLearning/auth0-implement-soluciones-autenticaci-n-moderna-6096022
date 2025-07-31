# frozen_string_literal: true

class HomeService
  def self.call
    [
      {
        title: 'Autenticación básica con Auth0',
        description:
          'Implementarás la autenticación básica con Auth0, que permite a los usuarios iniciar sesión utilizando un nombre de usuario y una contraseña y protegerás rutas mediante JWTs.',
        resource_url: 'https://auth0.com/docs/authenticate/login',
        icon: 'icon-login.png'
      },
      {
        title: 'Autenticación sin contraseñas',
        description:
          'Aprenderás a implementar la autenticación sin contraseñas, que permite a los usuarios iniciar sesión sin necesidad de recordar una contraseña. Utilizarás métodos como Magic Links, One-Time Passwords (OTP) y passkeys.',
        resource_url: 'https://auth0.com/docs/authenticate/passwordless',
        icon: 'icon-one-time-password.png'
      },
      {
        title: 'Multi-Factor Authentication',
        description:
          'Entederás todo sobre la autenticación multifactor (MFA), que añade una capa adicional de seguridad al proceso de inicio de sesión. Implementarás MFA para proteger las cuentas de usuario contra accesos no autorizados.',
        resource_url: 'https://auth0.com/docs/multifactor-authentication',
        icon: 'icon-multifactor.png'
      },
      {
        title: 'Auth0 Actions',
        description:
          'Aprenderás a utilizar Actions, que son funciones que te permiten personalizar el comportamiento de Auth0. Cada acción está vinculada a un evento específico en la plataforma Auth0 y se ejecuta cuando ocurre ese evento.',
        resource_url: 'https://auth0.com/docs/actions',
        icon: 'icon-actions.png'
      },
      {
        title: 'Restrigir acceso mediante roles y permisos',
        description:
          'Implementarás la gestión de roles y permisos para controlar el acceso a diferentes partes de tu aplicación. Aprenderás a asignar roles a los usuarios y a definir qué acciones pueden realizar en función de sus roles.',
        resource_url: 'https://auth0.com/docs/get-started/apis/enable-role-based-access-control-for-apis',
        icon: 'icon-advanced-options.png'
      },
            {
        title: 'Manejo en producción',
        description:
          'Aprenderás a manejar Auth0 en un entorno de producción, incluyendo la configuración de dominios personalizados, la gestión de usuarios y la monitorización de eventos de seguridad.',
        resource_url: 'https://auth0.com/docs/deploy-monitor/deployment-best-practices',
        icon: 'icon-server.png'
      }
    ]
  end
end