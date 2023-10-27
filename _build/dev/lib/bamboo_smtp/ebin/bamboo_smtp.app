{application,bamboo_smtp,
             [{optional_applications,[]},
              {applications,[kernel,stdlib,elixir,gen_smtp,logger,bamboo]},
              {description,"A Bamboo adapter for SMTP"},
              {modules,['Elixir.Bamboo.SMTPAdapter',
                        'Elixir.Bamboo.SMTPAdapter.SMTPError',
                        'Elixir.BambooSMTP.TestAdapter']},
              {registered,[]},
              {vsn,"4.0.1"}]}.
