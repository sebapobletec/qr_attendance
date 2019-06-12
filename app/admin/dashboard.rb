ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do

      column do
        panel 'Latest companies' do
          ul do
            Company.last(5).map do |company|
              li link_to(company.name, admin_company_path(company))
            end
          end
        end
      end

      column do
        panel 'Latest events' do
          ul do
            Event.last(5).map do |event|
              li link_to(event.title, admin_event_path(event))
            end
          end
        end
      end

      column do
        panel 'Latest workers' do
          ul do
            Worker.last(5).map do |worker|
              li link_to(worker.name, admin_worker_path(worker))
            end
          end
        end
      end

    end

    columns do

      column do
        panel 'Total companies' do
          Company.count
        end
      end

      column do
        panel 'Total events' do
          Event.count
        end
      end

      column do
        panel 'Total workers' do
            Worker.count
        end
      end

    end

  end # content
end
